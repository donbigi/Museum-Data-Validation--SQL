## Museum Exhibition Data Validation
<p>You are working with a local museum. The museum is about to launch a new interactive application on Roman emperors and your job is to prepare the data that it will display.</p>
<p>The museum’s database has a table, named <code>emperors</code>, with basic information on all emperors who ruled from 1 AD onwards. You will need to clean the data before the app can launch.</p>
<p>Your query will need to return a table that contains the following columns (with the given alias) and meets the specified requirements. You will use the data contained in the <code>emperors</code> table.</p>
<table>
<thead>
<tr>
<th style="text-align:left;">Requirements</th>
<th style="text-align:left;">Data Type</th>
<th style="text-align:left;">Column Alias</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">Short name of the emperor in upper case (e.g., ‘AUGUSTUS‘). This is a unique name, and there should only be one entry per emperor.</td>
<td style="text-align:left;">TEXT</td>
<td style="text-align:left;">name</td>
</tr>
<tr>
<td style="text-align:left;"></td>
<td style="text-align:left;"></td>
<td style="text-align:left;"></td>
</tr>
<tr>
<td style="text-align:left;">Full name of the emperor in lower case (e.g., ‘tiberivs caesar divi avgvsti filivs avgvstvs‘).</td>
<td style="text-align:left;">TEXT</td>
<td style="text-align:left;">full_name</td>
</tr>
<tr>
<td style="text-align:left;"></td>
<td style="text-align:left;"></td>
<td style="text-align:left;"></td>
</tr>
<tr>
<td style="text-align:left;">Birth place in format ‘City, Province’ (with a space after the comma). If the birth city is missing but the province is known, the table should read ‘Unknown, Province’, and vice versa. If both are missing the value should simply read ‘Unknown’ (i.e., instead of 'Unknown, Unknown').</td>
<td style="text-align:left;">TEXT</td>
<td style="text-align:left;">birthplace</td>
</tr>
<tr>
<td style="text-align:left;"></td>
<td style="text-align:left;"></td>
<td style="text-align:left;"></td>
</tr>
<tr>
<td style="text-align:left;">Age at time of death, in years (e.g., 34). In cases where either the birth or death date are missing the value should read ‘Unknown’.</td>
<td style="text-align:left;">TEXT</td>
<td style="text-align:left;">age</td>
</tr>
<tr>
<td style="text-align:left;"></td>
<td style="text-align:left;"></td>
<td style="text-align:left;"></td>
</tr>
<tr>
<td style="text-align:left;">Length of reign, in years (e.g., 4). Calculated as the date the reign ended minus the date the reign began. In cases where the start or end date of the reign are missing the value should read ‘Unknown’.</td>
<td style="text-align:left;">TEXT</td>
<td style="text-align:left;">reign</td>
</tr>
<tr>
<td style="text-align:left;"></td>
<td style="text-align:left;"></td>
<td style="text-align:left;"></td>
</tr>
<tr>
<td style="text-align:left;">Cause of death. Limited to ‘Assassination‘, ‘Natural Causes‘, ‘Execution‘, ‘Died in Battle‘, and ‘Suicide‘. All other causes of death should be categorized as ‘Other‘.</td>
<td style="text-align:left;">TEXT</td>
<td style="text-align:left;">cod</td>
</tr>
<tr>
<td style="text-align:left;"></td>
<td style="text-align:left;"></td>
<td style="text-align:left;"></td>
</tr>
<tr>
<td style="text-align:left;">Era in which they ruled. Reigns that began prior to 284 AD should be categorized as ‘Principate‘, and reigns that began in 284 AD or later should be categorized as ‘Dominate‘.</td>
<td style="text-align:left;">TEXT</td>
<td style="text-align:left;">era</td>
</tr>
</tbody>
</table>
