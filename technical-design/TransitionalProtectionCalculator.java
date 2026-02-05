package uc.migration.calculator;

/**
 * Reference implementation: Transitional Protection Calculator
 * Business Rule validation for UC Managed Migration
 * 
 * Note: This demonstrates BA understanding of technical implementation.
 * In production, this logic would be implemented by Capgemini/TCS engineers.
 */
public class TransitionalProtectionCalculator {
    
    private static final double WEEKS_TO_MONTHS = 52.0 / 12.0;
    private static final double TAPER_RATE = 0.65;
    
    public double calculateTransitionalElement(double legacyWeeklyAmount, 
                                                double ucStandardAllowance) {
        // Business requirement: Convert weekly legacy to monthly
        double legacyMonthly = legacyWeeklyAmount * WEEKS_TO_MONTHS;
        
        // Transitional element bridges the gap if legacy higher
        double transitionalElement = Math.max(0, legacyMonthly - ucStandardAllowance);
        
        return Math.round(transitionalElement * 100.0) / 100.0;
    }
    
    public double applyErosion(double currentTransitionalElement, 
                               double earnings,
                               double workAllowance) {
        // Business rule: 65% taper on earnings above work allowance
        double surplus = Math.max(0, earnings - workAllowance);
        double erosion = surplus * TAPER_RATE;
        
        return Math.max(0, currentTransitionalElement - erosion);
    }
}
