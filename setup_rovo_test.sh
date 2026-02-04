#!/bin/bash

echo "🛠️  Adding Missing Test Scenarios..."

# 1. WEB-03: Sarah Jenkins Blog Posts (Overwrite index + add posts)
mkdir -p blog
cat > blog/index.html <<EOF
<html><body><h1>Acme Blog</h1>
<ul>
<li><a href="post1.html">The Future of AI</a> by Sarah Jenkins</li>
<li><a href="post2.html">Kubernetes at Scale</a> by Sarah Jenkins</li>
<li><a href="post3.html">Python 4.0</a> by Sarah Jenkins</li>
<li><a href="post4.html">Rust vs Go</a> by Sarah Jenkins</li>
<li><a href="post5.html">Cloud Economics</a> by Sarah Jenkins</li>
</ul></body></html>
EOF
# Create the 5 dummy posts
for i in {1..5}; do echo "<html><body><h1>Post $i</h1><p>Author: Sarah Jenkins</p><p>Content...</p></body></html>" > blog/post$i.html; done

# 2. WEB-05: Healthcare Case Studies (Need 4 items)
mkdir -p resources/case-studies
echo "Case Study 1: Healthcare AI 2025" > resources/case-studies/healthcare-1.pdf
echo "Case Study 2: Hospital Data 2025" > resources/case-studies/healthcare-2.pdf
echo "Case Study 3: Patient Care 2025" > resources/case-studies/healthcare-3.pdf
echo "Case Study 4: Pharma Logistics 2025" > resources/case-studies/healthcare-4.pdf

# 3. WEB-12: System Status
echo "<html><body><h1>System Status</h1><div class='incident'><h2>Incident: Apollo DB</h2><p>Status: <strong>Resolved</strong></p><p>Date: Yesterday</p></div></body></html>" > status.html

# 4. WEB-13: Warranty
mkdir -p support
cat > support/warranty.html <<EOF
<html><body><h1>Warranty Terms</h1>
<h2>Basic Plan</h2><p>Coverage: 1 Year. Deductible: $50.</p>
<h2>Premium Plan</h2><p>Coverage: 3 Years. Deductible: $0. Includes accidental damage.</p>
</body></html>
EOF

# 5. WEB-16 & WEB-34: Returns Policy
mkdir -p shop
cat > shop/returns.html <<EOF
<html><body><h1>Return Policy</h1>
<p>Standard items: Returnable within 30 days.</p>
<p class="exception"><strong>Sale items: Final Sale. No returns accepted.</strong></p>
</body></html>
EOF

# 6. WEB-18: Events
mkdir -p events
cat > events/summit-2026.html <<EOF
<html><body><h1>Tech Summit 2026</h1><p>Dates: Oct 15-17, 2026</p><p>Location: Las Vegas, NV</p></body></html>
EOF

# 7. WEB-19: API Formats (Negative Proof)
cat > developer/formats.html <<EOF
<html><body><h1>API Formats</h1><p>The API accepts and returns <strong>JSON only</strong>.</p><p>XML is NOT supported.</p></body></html>
EOF

# 8. WEB-20: Team / People
mkdir -p team
cat > team/mobile.html <<EOF
<html><body><h1>Mobile Team</h1><p>Product Manager: <strong>Jessica Wong</strong></p><p>Lead Dev: Mike Ross</p></body></html>
EOF

# 9. WEB-22: Press / Bad Review
mkdir -p press
cat > press/reviews.html <<EOF
<html><body><h1>In the News</h1>
<blockquote>"The UI is beautiful, but the battery drain is significant." - TechDaily Review</blockquote>
</body></html>
EOF

# 10. WEB-25: Partners (Alt Text)
mkdir -p partners
cat > partners/index.html <<EOF
<html><body><h1>Our Partners</h1>
<img src="logo1.png" alt="Salesforce Integration">
<img src="logo2.png" alt="AWS Partner">
<img src="logo3.png" alt="Slack Certified">
</body></html>
EOF

# 11. WEB-29 & WEB-38: Tech Specs (Titan & SmartSync)
mkdir -p technology
echo "<html><body><h1>Project Titan Architecture</h1><p>Titan uses a hexagonal architecture with Kafka streams.</p></body></html>" > technology/titan.html
echo "<html><body><h1>SmartSync Technology</h1><p>SmartSync uses differential compression to sync only changed bits.</p></body></html>" > technology/smartsync.html

# 12. WEB-31: GDPR / Legal
mkdir -p legal
echo "<html><body><h1>Privacy Policy</h1><p>We comply with GDPR and CCPA.</p></body></html>" > legal/privacy.html
echo "<html><body><h1>Terms of Service</h1><p>Compliance: GDPR Standard.</p></body></html>" > legal/terms.html
echo "<html><body><h1>Regulatory News</h1><p>Update: New EU AI Act compliance initiated.</p></body></html>" > legal/news.html

# 13. WEB-33: Marketing Results
mkdir -p marketing
echo "<html><body><h1>Q3 Campaign Review</h1><h2>Goals</h2><p>Leads: 1000</p><h2>Results</h2><p>Actual Leads: 1250 (+25%)</p></body></html>" > marketing/q3-review.html

# 14. WEB-35: Password Reset
cat > help/password-reset.html <<EOF
<html><body><h1>How to Reset Password</h1><ol><li>Go to Settings</li><li>Click Security</li><li>Select 'Reset'</li></ol></body></html>
EOF

echo "✅ All missing test pages added!"
