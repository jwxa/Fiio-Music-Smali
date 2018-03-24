.class final Lorg/fourthline/cling/registry/h;
.super Ljava/lang/Object;
.source "RegistryItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private c:Lorg/fourthline/cling/model/ExpirationDetails;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/fourthline/cling/model/ExpirationDetails;

    invoke-direct {v0}, Lorg/fourthline/cling/model/ExpirationDetails;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/h;->c:Lorg/fourthline/cling/model/ExpirationDetails;

    .line 32
    iput-object p1, p0, Lorg/fourthline/cling/registry/h;->a:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TI;I)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/fourthline/cling/model/ExpirationDetails;

    invoke-direct {v0}, Lorg/fourthline/cling/model/ExpirationDetails;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/h;->c:Lorg/fourthline/cling/model/ExpirationDetails;

    .line 36
    iput-object p1, p0, Lorg/fourthline/cling/registry/h;->a:Ljava/lang/Object;

    .line 37
    iput-object p2, p0, Lorg/fourthline/cling/registry/h;->b:Ljava/lang/Object;

    .line 38
    new-instance v0, Lorg/fourthline/cling/model/ExpirationDetails;

    invoke-direct {v0, p3}, Lorg/fourthline/cling/model/ExpirationDetails;-><init>(I)V

    iput-object v0, p0, Lorg/fourthline/cling/registry/h;->c:Lorg/fourthline/cling/model/ExpirationDetails;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lorg/fourthline/cling/registry/h;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lorg/fourthline/cling/registry/h;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()Lorg/fourthline/cling/model/ExpirationDetails;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/fourthline/cling/registry/h;->c:Lorg/fourthline/cling/model/ExpirationDetails;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 54
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    .line 55
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_2
    check-cast p1, Lorg/fourthline/cling/registry/h;

    .line 59
    iget-object v0, p0, Lorg/fourthline/cling/registry/h;->a:Ljava/lang/Object;

    iget-object v1, p1, Lorg/fourthline/cling/registry/h;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/fourthline/cling/registry/h;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/registry/h;->c:Lorg/fourthline/cling/model/ExpirationDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KEY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/registry/h;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ITEM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/registry/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
