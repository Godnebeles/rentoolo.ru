﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OpenAuthProviders.ascx.cs" Inherits="Rentoolo.Account.OpenAuthProviders" %>

<fieldset class="open-auth-providers">
    <asp:ListView runat="server" ID="providerDetails" ItemType="Microsoft.AspNet.Membership.OpenAuth.ProviderDetails"
        SelectMethod="GetProviderNames" ViewStateMode="Disabled">
        <ItemTemplate>
            <button type="submit" name="provider" value="<%#: Item.ProviderName %>"
                title="Log in using your <%#: Item.ProviderDisplayName %> account.">
                <%#: Item.ProviderDisplayName %>
            </button>
        </ItemTemplate>
        <EmptyDataTemplate>
            <div class="message-info">
                <p>Здесь будет регистрация через социалки.</p>
                <%--<p>There are no external authentication services configured. See <a href="http://go.microsoft.com/fwlink/?LinkId=252803">this article</a> for details on setting up this ASP.NET application to support logging in via external services.</p>--%>
            </div>
        </EmptyDataTemplate>
    </asp:ListView>
</fieldset>
