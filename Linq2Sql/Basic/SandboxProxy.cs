using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Basic
{
    public class SandboxProxy
    {
        SandboxDataContext _ctx = new SandboxDataContext(@"Data Source=.\SQLEXPRESS;Initial Catalog=sandbox;Integrated Security=True");
        
        public void ProjectJobs()
        {
            using (StreamWriter sw = new StreamWriter(@"c:\tmp2\log.txt", true))
            {
                _ctx.Log = sw;
                
                var result = from x in _ctx.Projects
                             join y in _ctx.Jobs
                             on x.id equals y.ProjectId
                             select new
                             {
                                 ProjectName = x.ProjectName,
                                 JobName = y.JobName
                             };
                result.ToList();
            }
        }

        public void BigData()
        {
            var results = from x in _ctx.TestLargeTables select x;
            results.ToList();
        }
    }
}
