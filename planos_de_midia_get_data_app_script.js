//Menu

function onOpen() {
  var ui = SpreadsheetApp.getUi();
  ui.createMenu('Armazenar plano de mídia')
      .addItem('Armazenar agora', 'popularDb')
      
      .addToUi();
}

//Get data

function popularDb() {
  var sheet = SpreadsheetApp.getActiveSpreadsheet().getSheetByName('Investimento x Metas');
  var spreadSheet = SpreadsheetApp.getActive();
  var sheetsId = spreadSheet.getUrl();
  var valorTotal = sheet.getRange('J8:J8').getValues()[0];
  var dataInicio = sheet.getRange('B20:B20').getValues()[0];
  var dataTermino = sheet.getRange('C20:C20').getValues()[0];
  var taskId = sheet.getRange('E5:E5').getValues()[0];
  var unidade = sheet.getRange('B8:B8').getValues()[0];
  var segmento = sheet.getRange('B11:B11').getValues()[0];
  
  // Checks if the user has informed an ID and terminates the program if not.
  if ([...taskId].toString() == ""){
    SpreadsheetApp.getUi().alert('Primeiro adicione a ID da task que está no Clickup');
    return;
  }
  
  var listOfValues = [...unidade,...segmento,...taskId,...valorTotal,...dataInicio,...dataTermino, sheetsId,]
  console.log(valorTotal, sheetsId)
  
 
//Store data and checks if idExists

  var DB_ID = "1nsxxUYXZKXxzqRvODUpTx9bRc4RmszIEYLaV0818n0w";
  var dbSheet = SpreadsheetApp.openById(DB_ID);
  var range = dbSheet.getRange('C:C').getValues();
  idExists = false

  for (const [index, element] of range.entries()) {    
    if ([...element].toString() == [...taskId].toString()) {
      dbSheet.deleteRow(index + 1)
      dbSheet.appendRow(listOfValues) //conteúdo a ser inserido
      console.log("a linha ", index + 1, "foi excluida");
      idExists = true
      break;
    }
    
  }

  console.log("O registro já existia? ",idExists)
  if (idExists == false){
    dbSheet.appendRow(listOfValues) //conteúdo a ser inserido
  }
}
