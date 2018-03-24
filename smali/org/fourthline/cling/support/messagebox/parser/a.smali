.class final Lorg/fourthline/cling/support/messagebox/parser/a;
.super Lorg/seamless/xml/NamespaceContextMap;
.source "MessageDOMParser.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/support/messagebox/parser/a;->a:Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;

    .line 35
    invoke-direct {p0}, Lorg/seamless/xml/NamespaceContextMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getDefaultNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "urn:samsung-com:messagebox-1-0"

    return-object v0
.end method
