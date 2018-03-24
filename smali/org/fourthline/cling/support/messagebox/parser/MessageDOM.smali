.class public Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;
.super Lorg/seamless/xml/DOM;
.source "MessageDOM.java"


# static fields
.field public static final NAMESPACE_URI:Ljava/lang/String; = "urn:samsung-com:messagebox-1-0"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/seamless/xml/DOM;-><init>(Lorg/w3c/dom/Document;)V

    .line 32
    return-void
.end method


# virtual methods
.method public copy()Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;
    .locals 3

    .prologue
    .line 46
    new-instance v1, Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;

    invoke-direct {v1, v0}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;-><init>(Lorg/w3c/dom/Document;)V

    return-object v1
.end method

.method public bridge synthetic copy()Lorg/seamless/xml/DOM;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;->copy()Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;

    move-result-object v0

    return-object v0
.end method

.method public createRoot(Ljavax/xml/xpath/XPath;Ljava/lang/String;)Lorg/fourthline/cling/support/messagebox/parser/MessageElement;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p2}, Lorg/seamless/xml/DOM;->createRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 51
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;->getRoot(Ljavax/xml/xpath/XPath;)Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    move-result-object v0

    return-object v0
.end method

.method public getRoot(Ljavax/xml/xpath/XPath;)Lorg/fourthline/cling/support/messagebox/parser/MessageElement;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public bridge synthetic getRoot(Ljavax/xml/xpath/XPath;)Lorg/seamless/xml/DOMElement;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;->getRoot(Ljavax/xml/xpath/XPath;)Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    move-result-object v0

    return-object v0
.end method

.method public getRootElementNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "urn:samsung-com:messagebox-1-0"

    return-object v0
.end method
