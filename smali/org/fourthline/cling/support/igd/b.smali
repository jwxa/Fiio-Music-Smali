.class final Lorg/fourthline/cling/support/igd/b;
.super Lorg/fourthline/cling/support/igd/callback/PortMappingDelete;
.source "PortMappingListener.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/support/igd/PortMappingListener;

.field private final synthetic b:Lorg/fourthline/cling/support/model/PortMapping;

.field private final synthetic c:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/igd/PortMappingListener;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/support/model/PortMapping;Lorg/fourthline/cling/support/model/PortMapping;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/support/igd/b;->a:Lorg/fourthline/cling/support/igd/PortMappingListener;

    iput-object p5, p0, Lorg/fourthline/cling/support/igd/b;->b:Lorg/fourthline/cling/support/model/PortMapping;

    iput-object p6, p0, Lorg/fourthline/cling/support/igd/b;->c:Ljava/util/Iterator;

    .line 146
    invoke-direct {p0, p2, p3, p4}, Lorg/fourthline/cling/support/igd/callback/PortMappingDelete;-><init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/support/model/PortMapping;)V

    return-void
.end method


# virtual methods
.method public final failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lorg/fourthline/cling/support/igd/b;->a:Lorg/fourthline/cling/support/igd/PortMappingListener;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to delete port mapping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/support/igd/b;->b:Lorg/fourthline/cling/support/model/PortMapping;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/igd/PortMappingListener;->handleFailureMessage(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lorg/fourthline/cling/support/igd/b;->a:Lorg/fourthline/cling/support/igd/PortMappingListener;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/igd/PortMappingListener;->handleFailureMessage(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public final success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 3

    .prologue
    .line 150
    invoke-static {}, Lorg/fourthline/cling/support/igd/PortMappingListener;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Port mapping deleted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/support/igd/b;->b:Lorg/fourthline/cling/support/model/PortMapping;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lorg/fourthline/cling/support/igd/b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 152
    return-void
.end method
