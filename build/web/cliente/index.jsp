<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<f:view>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
    </head>
    <body>
        <h:form>
            <h:commandLink value="[ Logout ]" action="#{loginMB.logoff}" />
            <h1>Listando clientes!</h1>
            <h:dataTable var="cliente" value="#{clienteMB.clientes}" >
                <h:column>
                    <f:facet name="header">
                        <h:outputText value="ID" />
                    </f:facet>
                    <h:outputText value="#{cliente.id}" />
                </h:column>
                <h:column>
                    <f:facet name="header">
                        <h:outputText value="Nome" />
                    </f:facet>
                    <h:outputText value="#{cliente.nome}" />
                </h:column>
                <h:column>
                    <f:facet name="header">
                        <h:outputText value="Email" />
                    </f:facet>
                    <h:outputText value="#{cliente.email}" />
                </h:column>
                <h:column>
                    <h:commandButton value="Editar" action="new" >
                        <f:setPropertyActionListener value="#{cliente}" target="#{clienteMB.cliente}"/>
                    </h:commandButton>
                </h:column>
                <h:column>
                    <h:commandButton value="Destroy" action="#{clienteMB.destroy}" >
                        <f:setPropertyActionListener value="#{cliente}" target="#{clienteMB.cliente}"/>
                    </h:commandButton>
                </h:column>
            </h:dataTable>
        
        <h:commandLink value="Novo Cliente" action="new" /> | 
        <h:commandLink value="[ Voltar ]" action="CPANEL" />
        </h:form>
    </body>
</html>
</f:view>