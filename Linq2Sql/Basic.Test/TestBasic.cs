using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Basic.Test
{
    [TestClass]
    public class TestBasic
    {
        [TestMethod]
        public void Test_ProjectJobs()
        {
            var proxy = new SandboxProxy();
            proxy.ProjectJobs();
        }

        [TestMethod]
        public void Test_BigData()
        {
            var proxy = new SandboxProxy();
            proxy.BigData();
        }
    }
}
