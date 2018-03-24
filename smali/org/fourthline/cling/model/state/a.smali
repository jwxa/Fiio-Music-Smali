.class final Lorg/fourthline/cling/model/state/a;
.super Ljava/lang/Object;
.source "StateVariableAccessor.java"

# interfaces
.implements Lorg/fourthline/cling/model/Command;


# instance fields
.field a:Ljava/lang/Object;

.field final synthetic b:Lorg/fourthline/cling/model/state/StateVariableAccessor;

.field private final synthetic c:Ljava/lang/Object;

.field private final synthetic d:Lorg/fourthline/cling/model/meta/StateVariable;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/model/state/StateVariableAccessor;Ljava/lang/Object;Lorg/fourthline/cling/model/meta/StateVariable;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lorg/fourthline/cling/model/state/a;->b:Lorg/fourthline/cling/model/state/StateVariableAccessor;

    iput-object p2, p0, Lorg/fourthline/cling/model/state/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lorg/fourthline/cling/model/state/a;->d:Lorg/fourthline/cling/model/meta/StateVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lorg/fourthline/cling/model/ServiceManager;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lorg/fourthline/cling/model/state/a;->b:Lorg/fourthline/cling/model/state/StateVariableAccessor;

    iget-object v1, p0, Lorg/fourthline/cling/model/state/a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/state/StateVariableAccessor;->read(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/state/a;->a:Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lorg/fourthline/cling/model/state/a;->d:Lorg/fourthline/cling/model/meta/StateVariable;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariable;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalService;

    iget-object v1, p0, Lorg/fourthline/cling/model/state/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/meta/LocalService;->isStringConvertibleType(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lorg/fourthline/cling/model/state/a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/state/a;->a:Ljava/lang/Object;

    .line 42
    :cond_0
    return-void
.end method
