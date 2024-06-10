using System.Collections.Generic;

namespace Labirinth.Common
{
    /// <summary>
    /// Options
    /// </summary>
    public class CommonOptions
    {
        /// <summary>
        /// ConnectionString
        /// </summary>
        public string ConnectionString { get; set; }
       
        /// <summary>
        /// options for error' notify lib
        /// </summary>
        public ErrorNotifyOptions ErrorNotifyOptions { get; set; }
        public Dictionary<string, string> ConnectionStrings { get; set; }
    }
}
