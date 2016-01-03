using System.Collections.Generic;
using System.IO;
using System.Windows;
using System.Windows.Forms;

/// <summary>
/// TODO:
/// - async processing
/// - load headers/footers from separate dictionary file
/// - save results to file
/// </summary>

namespace PunGen
{
    public partial class MainWindow : Window
    {
        string FileLocation = "";

        public MainWindow()
        {
            InitializeComponent();

            buttonGenerate.IsEnabled = false;
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog fileDialog = new OpenFileDialog();
            DialogResult result = fileDialog.ShowDialog();

            if (result == System.Windows.Forms.DialogResult.OK)
            {
                FileLocation = fileDialog.FileName;
                buttonGenerate.IsEnabled = true;
            }
        }

        private void buttonGenerate_Click(object sender, RoutedEventArgs e)
        {
            List<string> DictionaryList = new List<string>();
            try
            {
                DictionaryList.AddRange(File.ReadLines(FileLocation));
            }
            catch (IOException)
            {
            }

            ProcessWordDictionary(DictionaryList);
        }

        void ProcessWordDictionary(List<string> dictionary)
        {
            int letterCount = int.Parse(textBoxLetterCount.Text);
            if (letterCount > 0)
            {
                Dictionary<string, List<string>> HeaderDictionary = GeneratePartialDictionary(dictionary, letterCount, true);
                Dictionary<string, List<string>> FooterDictionary = GeneratePartialDictionary(dictionary, letterCount, false);

                List<string> combinations = GenerateCombinations(HeaderDictionary, FooterDictionary);

                // demo display
                textBoxPreview.Text = "";

                foreach (string word in combinations)
                {
                    string str = textBoxPreview.Text;
                    str += word + "\n";
                    textBoxPreview.Text = str;
                }
            }
        }

        Dictionary<string, List<string>> GeneratePartialDictionary(List<string> dictionary, int count, bool fromStart)
        {
            Dictionary<string, List<string>> result = new Dictionary<string, List<string>>();

            if (count > 0)
            {
                int limiter = 0;

                int maxLimit = int.Parse(textBoxLimit.Text);
                int minimalWordLength = count + int.Parse(textBoxExtra.Text);

                foreach (string word in dictionary)
                {
                    if (word.Length >= minimalWordLength)
                    {
                        // force stop after 100 items
                        limiter++;
                        if (limiter >= maxLimit)
                        {
                            break;
                        }

                        int keyStart = 0;
                        if (fromStart == false)
                        {
                            keyStart = word.Length - count;
                        }
                        string key = word.Substring(keyStart, count).ToLower();

                        List<string> values = null;
                        if (result.TryGetValue(key, out values) == false)
                        {
                            values = new List<string>();
                        }

                        values.Add(word);
                        result[key] = values;
                    }
                }
            }

            return result;
        }

        List<string> GenerateCombinations(Dictionary<string, List<string>> header, Dictionary<string, List<string>> footer)
        {
            List<string> result = new List<string>();

            if (header.Keys.Count > 0 && footer.Keys.Count > 0)
            {
                foreach (string key in header.Keys)
                {
                    List<string> headerValues = header[key];
                    List<string> footerValues = null;
                    if (footer.TryGetValue(key, out footerValues) == true)
                    {
                        foreach (string valueFooter in footerValues)
                        {
                            foreach (string valueHeader in headerValues)
                            {
                                string trimmedFooterValue = valueFooter.Substring(0, valueFooter.Length - key.Length);
                                result.Add(trimmedFooterValue + valueHeader);
                            }
                        }
                    }
                }
            }

            return result;
        }
    }
}
