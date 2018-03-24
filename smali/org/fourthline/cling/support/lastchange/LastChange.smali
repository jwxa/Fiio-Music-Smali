.class public Lorg/fourthline/cling/support/lastchange/LastChange;
.super Ljava/lang/Object;
.source "LastChange.java"


# instance fields
.field private final event:Lorg/fourthline/cling/support/lastchange/Event;

.field private final parser:Lorg/fourthline/cling/support/lastchange/LastChangeParser;

.field private previousValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This constructor is only for service binding detection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;)V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lorg/fourthline/cling/support/lastchange/Event;

    invoke-direct {v0}, Lorg/fourthline/cling/support/lastchange/Event;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/support/lastchange/LastChange;-><init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;Lorg/fourthline/cling/support/lastchange/Event;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->parse(Ljava/lang/String;)Lorg/fourthline/cling/support/lastchange/Event;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    .line 69
    :goto_0
    iput-object p1, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->parser:Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    .line 70
    return-void

    .line 67
    :cond_0
    new-instance v0, Lorg/fourthline/cling/support/lastchange/Event;

    invoke-direct {v0}, Lorg/fourthline/cling/support/lastchange/Event;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;Lorg/fourthline/cling/support/lastchange/Event;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->parser:Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    .line 56
    iput-object p2, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    .line 57
    return-void
.end method


# virtual methods
.method public declared-synchronized fire(Ljava/beans/PropertyChangeSupport;)V
    .locals 3

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChange;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 113
    const-string v1, "LastChange"

    iget-object v2, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->previousValue:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChange;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventedValue(ILjava/lang/Class;)Lorg/fourthline/cling/support/lastchange/EventedValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EV:",
            "Lorg/fourthline/cling/support/lastchange/EventedValue;",
            ">(I",
            "Ljava/lang/Class",
            "<TEV;>;)TEV;"
        }
    .end annotation

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    int-to-long v2, p1

    invoke-direct {v0, v2, v3}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-virtual {p0, v0, p2}, Lorg/fourthline/cling/support/lastchange/LastChange;->getEventedValue(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/Class;)Lorg/fourthline/cling/support/lastchange/EventedValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventedValue(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/Class;)Lorg/fourthline/cling/support/lastchange/EventedValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EV:",
            "Lorg/fourthline/cling/support/lastchange/EventedValue;",
            ">(",
            "Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;",
            "Ljava/lang/Class",
            "<TEV;>;)TEV;"
        }
    .end annotation

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/support/lastchange/Event;->getEventedValue(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/Class;)Lorg/fourthline/cling/support/lastchange/EventedValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getEventedValues(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)[Lorg/fourthline/cling/support/lastchange/EventedValue;
    .locals 2

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/support/lastchange/Event;->getInstanceID(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/lastchange/InstanceID;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/support/lastchange/EventedValue;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/lastchange/EventedValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInstanceIDs()[Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 3

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    iget-object v0, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 91
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/lastchange/InstanceID;

    .line 92
    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getId()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChange;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->previousValue:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/Event;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized setEventedValue(I[Lorg/fourthline/cling/support/lastchange/EventedValue;)V
    .locals 4

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    int-to-long v2, p1

    invoke-direct {v0, v2, v3}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-virtual {p0, v0, p2}, Lorg/fourthline/cling/support/lastchange/LastChange;->setEventedValue(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;[Lorg/fourthline/cling/support/lastchange/EventedValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized setEventedValue(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;[Lorg/fourthline/cling/support/lastchange/EventedValue;)V
    .locals 4

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    array-length v1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 87
    monitor-exit p0

    return-void

    .line 82
    :cond_0
    :try_start_1
    aget-object v2, p2, v0

    .line 83
    if-eqz v2, :cond_1

    .line 84
    iget-object v3, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    invoke-virtual {v3, p1, v2}, Lorg/fourthline/cling/support/lastchange/Event;->setEventedValue(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/lastchange/EventedValue;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/Event;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->parser:Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    iget-object v1, p0, Lorg/fourthline/cling/support/lastchange/LastChange;->event:Lorg/fourthline/cling/support/lastchange/Event;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->generate(Lorg/fourthline/cling/support/lastchange/Event;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
