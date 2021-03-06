package com.saral.reporting.view;

import org.json.JSONArray;
import org.json.JSONObject;
import org.supercsv.io.CsvBeanWriter;
import org.supercsv.io.ICsvBeanWriter;
import org.supercsv.prefs.CsvPreference;

import com.saral.reporting.utils.JsonUtils;
import com.saral.reporting.view.AbstractCsvView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class CsvView extends AbstractCsvView {
	@SuppressWarnings("unchecked")
	@Override
	protected void buildCsvDocument(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		response.setHeader("Content-Disposition", "attachment; filename=\"my-csv-file.csv\"");
		JSONArray output = (JSONArray) model.get("applInfoJsonForCSV");
		ArrayList<String> ar = new ArrayList<String>();

		JSONObject json = output.getJSONObject(0);
		
		Iterator<String> keys = json.keys();
		
while (keys.hasNext()) {
			String key = keys.next();
			ar.add(key);
			System.out.println(key);
		
		}
		
		String[] header = new String[ar.size()];
		header = ar.toArray(header);
	
		System.out.println("Header is" + header.toString());
		 for (String x : header) 
	            System.out.print(x + " "); 
		 
	/*	 File file=new File(PATH_VARIABLES);
		 System.out.println("jasvdjvsdkv");
	     String csv = CDL.toString(output);
	     FileUtils.writeStringToFile(file, csv);
		 System.out.println(file.getAbsolutePath());*/
		
		ICsvBeanWriter csvWriter = new CsvBeanWriter(response.getWriter(), CsvPreference.STANDARD_PREFERENCE);
		csvWriter.writeHeader(header);
		List<Object> lst = JsonUtils.toList(output);
		for (Object user : lst) {
            csvWriter.write(user, header);
        }
		csvWriter.close();
	}

}
