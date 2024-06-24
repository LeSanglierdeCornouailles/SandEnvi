/**
 * @description       :
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             :
 * @last modified on  : 06-24-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 **/
public class EmailUtils {
    public static void sendMessage(AsyncApexJob job, Integer recordsProcessed) {
      Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
  
      String[] toAddresses = new List<String>{ job.CreatedBy.Email };
  
      mail.setToAddresses(toAddresses);
      mail.setSubject('Apex Batch Job completed');
      mail.setPlainTextBody(
        'Apex Batch Processed ' + recordsProcessed + ' Records'
      );
  
      List<Messaging.SingleEmailMessage> emailMessage = new List<Messaging.SingleEmailMessage>{
        mail
      };
  
      List<Messaging.SendEmailResult> results = Messaging.sendEmail(emailMessage);
  
      if (results[0].success) {
        System.debug('Email was sent successfully.');
      } else {
        System.debug('The email failed to send: ' + results[0].errors[0].message);
      }
    }
  }
  