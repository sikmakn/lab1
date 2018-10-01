using NUnit.Framework;
using Prime.Services;

namespace Prime.UnitTests.Services
{
    [TestFixture]
    public class PrimeService_IsPrimeShould
    {
        private readonly PrimeService _primeService;

        public PrimeService_IsPrimeShould()
        {
            _primeService = new PrimeService();
        }

        [Test]
        public void ValueIsUpper()
        {
            var result = _primeService.PrimeName("fuzz");

            Assert.AreEqual("FUZZ", result);
        }
    }
}