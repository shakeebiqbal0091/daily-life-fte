# Finance Monitor Skill

## Purpose
Track expenses, monitor budget, alert on overspending, and provide comprehensive financial insights to help users achieve their financial goals.

## Persona
Personal finance advisor with expertise in expense tracking, budget management, and financial planning. Skilled at providing actionable financial insights and helping users achieve their financial goals.

## Questions
1. What types of expenses do you want to track? (daily, monthly, specific categories)
2. What is your monthly income and budget?
3. What are your financial goals? (saving, investing, debt reduction)
4. Do you have any upcoming major expenses or financial commitments?
5. What financial accounts or platforms do you use?
6. How frequently do you want to receive financial updates?
7. Are there any specific financial concerns or areas you want to focus on?

## Principles
1. Categorize expenses accurately and consistently
2. Track spending against budget in real-time
3. Alert on unusual spending patterns or overspending
4. Generate comprehensive financial reports
5. Provide actionable savings recommendations
6. Monitor financial goals and progress
7. Consider tax implications and planning
8. Provide investment insights when relevant
9. Maintain data privacy and security
10. Offer both short-term and long-term financial perspectives
11. Create visual financial dashboards
12. Provide context for financial decisions and trends

## Core Capabilities

### Expense Tracking
- Log daily expenses with categories
- Capture receipt photos and OCR
- Track spending patterns over time
- Identify recurring expenses
- Categorize transactions automatically

### Budget Management
- Set monthly budgets for categories
- Track spending against budget limits
- Alert when approaching budget limits
- Provide budget vs. actual analysis
- Suggest budget adjustments based on patterns

### Financial Alerts
- Notify on unusual spending
- Alert when overspending occurs
- Flag potential fraudulent transactions
- Remind of upcoming bill payments
- Notify when savings goals are reached

### Reporting & Analysis
- Generate monthly expense reports
- Create spending trend visualizations
- Analyze category-wise spending
- Calculate savings rate
- Provide tax preparation assistance

### Goal Monitoring
- Track savings goals progress
- Monitor debt reduction
- Calculate net worth over time
- Set and track investment targets
- Provide progress toward financial milestones

## Integration Points

### MCP Servers
- **Finance API**: Direct access to bank accounts and transactions
- **Receipt OCR**: Process receipt images for expense logging
- **Calendar**: Schedule bill payments and financial reminders
- **Email**: Process financial statements and alerts

### External Tools
- **Banking apps**: Link to checking, savings, and credit card accounts
- **Investment platforms**: Track portfolio performance
- **Tax software**: Prepare tax documents and calculations
- **Budgeting apps**: Sync with existing budgeting tools

## Data Structure

### Expense Entry
```json
{
  "date": "2026-02-11",
  "amount": 45.99,
  "category": "Dining",
  "subcategory": "Restaurant",
  "merchant": "Starbucks",
  "payment_method": "Credit Card",
  "notes": "Morning coffee and breakfast",
  "receipt_image": "base64_image_data"
}
```

### Budget Category
```json
{
  "category": "Entertainment",
  "monthly_limit": 200.00,
  "current_spending": 145.50,
  "remaining_budget": 54.50,
  "percentage_used": 72.75,
  "alert_threshold": 80
}
```

### Financial Report
```json
{
  "period": "2026-02",
  "total_income": 5000.00,
  "total_expenses": 3250.75,
  "net_savings": 1749.25,
  "savings_rate": 34.99,
  "category_breakdown": {
    "Housing": {"spent": 1200.00, "budget": 1200.00, "percentage": 36.9},
    "Food": {"spent": 450.50, "budget": 400.00, "percentage": 13.9},
    "Transportation": {"spent": 150.00, "budget": 150.00, "percentage": 4.6},
    "Entertainment": {"spent": 200.00, "budget": 200.00, "percentage": 6.2}
  },
  "trend_analysis": "Spending in entertainment category increased 15% from last month",
  "recommendations": ["Consider reducing dining out expenses", "Increase savings rate to 40%"]
}
```

## Workflow Examples

### Daily Expense Logging
1. User captures receipt photo
2. OCR processes image and extracts merchant, amount, date
3. System suggests category based on merchant
4. User confirms or adjusts category
5. Expense added to daily log
6. Budget tracking updated in real-time
7. Alert triggered if budget threshold exceeded

### Monthly Financial Review
1. Aggregate all expenses for the month
2. Compare spending against budget for each category
3. Generate spending trend analysis
4. Calculate savings rate and net worth change
5. Identify areas for improvement
6. Provide actionable recommendations
7. Create visual dashboard of financial health
8. Schedule next month's budget based on patterns

### Budget Alert System
1. Monitor spending in real-time
2. Calculate percentage of budget used
3. Trigger alerts at 75%, 90%, and 100% of budget
4. Provide specific recommendations when alerts triggered
5. Suggest category adjustments if needed
6. Notify user of potential overspending

## Quality Standards

### Accuracy
- 98%+ accuracy in expense categorization
- Real-time budget tracking with ±1% precision
- Alert thresholds calibrated to user preferences

### Privacy & Security
- End-to-end encryption for financial data
- No storing of banking credentials
- Compliance with financial regulations
- User-controlled data sharing permissions

### User Experience
- Intuitive expense logging process
- Clear, actionable financial insights
- Customizable alert preferences
- Mobile-friendly interface
- Quick access to key financial metrics

## Success Metrics

### Financial Health Indicators
- Savings rate improvement (target: +5% quarterly)
- Budget adherence rate (target: 90%+)
- Expense categorization accuracy (target: 98%+)
- Alert response rate (target: 80%+)

### User Satisfaction
- Time saved on financial tracking (target: 2-3 hours weekly)
- Financial confidence score (target: 4.5/5)
- Goal achievement rate (target: 80%+)
- User engagement frequency (target: daily)

## Testing Scenarios

### Basic Expense Tracking
1. Log simple expense with all required fields
2. Verify categorization accuracy
3. Check budget update
4. Confirm alert triggers at correct thresholds

### Complex Financial Analysis
1. Process multiple expense types
2. Generate comprehensive monthly report
3. Verify trend analysis accuracy
4. Test recommendation quality

### Integration Testing
1. Connect to sample bank API
2. Process real transaction data
3. Sync with calendar for bill reminders
4. Test OCR receipt processing

## Documentation

### User Guide
- How to log expenses quickly
- Setting up budget categories
- Customizing alert preferences
- Understanding financial reports
- Integrating with existing accounts

### Developer Guide
- API endpoints for expense management
- Data structure specifications
- Integration with external financial services
- Testing procedures and test data
- Security implementation guidelines

## Version History

- **v1.0** - Initial implementation with basic expense tracking and budget management
- **v1.1** - Added OCR receipt processing and financial goal tracking
- **v1.2** - Enhanced reporting with trend analysis and actionable recommendations
- **v1.3** - Added investment tracking and tax preparation features
- **v1.4** - Improved mobile experience and real-time sync capabilities