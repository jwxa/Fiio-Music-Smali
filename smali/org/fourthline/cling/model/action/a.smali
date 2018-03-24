.class final Lorg/fourthline/cling/model/action/a;
.super Ljava/lang/Object;
.source "AbstractActionExecutor.java"

# interfaces
.implements Lorg/fourthline/cling/model/Command;


# instance fields
.field final synthetic a:Lorg/fourthline/cling/model/action/AbstractActionExecutor;

.field private final synthetic b:Lorg/fourthline/cling/model/action/ActionInvocation;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/model/action/AbstractActionExecutor;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/model/action/a;->a:Lorg/fourthline/cling/model/action/AbstractActionExecutor;

    iput-object p2, p0, Lorg/fourthline/cling/model/action/a;->b:Lorg/fourthline/cling/model/action/ActionInvocation;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lorg/fourthline/cling/model/ServiceManager;)V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lorg/fourthline/cling/model/action/a;->a:Lorg/fourthline/cling/model/action/AbstractActionExecutor;

    .line 74
    iget-object v1, p0, Lorg/fourthline/cling/model/action/a;->b:Lorg/fourthline/cling/model/action/ActionInvocation;

    .line 75
    invoke-interface {p1}, Lorg/fourthline/cling/model/ServiceManager;->getImplementation()Ljava/lang/Object;

    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/action/AbstractActionExecutor;->execute(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Action invocation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/fourthline/cling/model/action/a;->b:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
