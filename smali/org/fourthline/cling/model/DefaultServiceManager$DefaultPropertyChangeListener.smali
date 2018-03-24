.class public Lorg/fourthline/cling/model/DefaultServiceManager$DefaultPropertyChangeListener;
.super Ljava/lang/Object;
.source "DefaultServiceManager.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/model/DefaultServiceManager;


# direct methods
.method protected constructor <init>(Lorg/fourthline/cling/model/DefaultServiceManager;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lorg/fourthline/cling/model/DefaultServiceManager$DefaultPropertyChangeListener;->this$0:Lorg/fourthline/cling/model/DefaultServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 5

    .prologue
    .line 239
    invoke-static {}, Lorg/fourthline/cling/model/DefaultServiceManager;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Property change event on local service: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_EventedStateVariables"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/model/ModelUtil;->fromCommaSeparatedList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {}, Lorg/fourthline/cling/model/DefaultServiceManager;->access$0()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Changed variable names: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 248
    :try_start_0
    iget-object v1, p0, Lorg/fourthline/cling/model/DefaultServiceManager$DefaultPropertyChangeListener;->this$0:Lorg/fourthline/cling/model/DefaultServiceManager;

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/model/DefaultServiceManager;->getCurrentState([Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 250
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    iget-object v1, p0, Lorg/fourthline/cling/model/DefaultServiceManager$DefaultPropertyChangeListener;->this$0:Lorg/fourthline/cling/model/DefaultServiceManager;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/DefaultServiceManager;->getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;

    move-result-object v1

    .line 252
    const-string v2, "_EventedStateVariables"

    .line 253
    const/4 v3, 0x0

    .line 251
    invoke-virtual {v1, v2, v3, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 260
    invoke-static {}, Lorg/fourthline/cling/model/DefaultServiceManager;->access$0()Ljava/util/logging/Logger;

    move-result-object v1

    .line 261
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error reading state of service after state variable update event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
