.class final Lcom/fiio/music/d/a/b;
.super Ljava/lang/Object;
.source "ContentBrowseActionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/d/a/a;

.field private final synthetic b:Lorg/fourthline/cling/support/model/DIDLContent;

.field private final synthetic c:Lorg/fourthline/cling/model/action/ActionInvocation;


# direct methods
.method constructor <init>(Lcom/fiio/music/d/a/a;Lorg/fourthline/cling/support/model/DIDLContent;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/d/a/b;->a:Lcom/fiio/music/d/a/a;

    iput-object p2, p0, Lcom/fiio/music/d/a/b;->b:Lorg/fourthline/cling/support/model/DIDLContent;

    iput-object p3, p0, Lcom/fiio/music/d/a/b;->c:Lorg/fourthline/cling/model/action/ActionInvocation;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/d/a/b;->a:Lcom/fiio/music/d/a/a;

    invoke-static {v0}, Lcom/fiio/music/d/a/a;->a(Lcom/fiio/music/d/a/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    iget-object v0, p0, Lcom/fiio/music/d/a/b;->b:Lorg/fourthline/cling/support/model/DIDLContent;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLContent;->getContainers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/fiio/music/d/a/b;->b:Lorg/fourthline/cling/support/model/DIDLContent;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLContent;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 120
    :goto_2
    sget-object v0, Lcom/fiio/music/activity/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    iget-object v0, p0, Lcom/fiio/music/d/a/b;->b:Lorg/fourthline/cling/support/model/DIDLContent;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLContent;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 122
    :cond_1
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 170
    iget-object v0, p0, Lcom/fiio/music/d/a/b;->a:Lcom/fiio/music/d/a/a;

    invoke-static {v0}, Lcom/fiio/music/d/a/a;->c(Lcom/fiio/music/d/a/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 171
    return-void

    .line 88
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/container/Container;

    .line 89
    invoke-static {}, Lcom/fiio/music/d/a/a;->a()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "add child container "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/container/Container;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/fiio/music/d/a/b;->a:Lcom/fiio/music/d/a/a;

    invoke-static {v2}, Lcom/fiio/music/d/a/a;->a(Lcom/fiio/music/d/a/a;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/fiio/music/d/a/c;

    iget-object v4, p0, Lcom/fiio/music/d/a/b;->a:Lcom/fiio/music/d/a/a;

    invoke-static {v4}, Lcom/fiio/music/d/a/a;->b(Lcom/fiio/music/d/a/a;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/fiio/music/d/a/c;-><init>(Lorg/fourthline/cling/support/model/container/Container;Lorg/fourthline/cling/model/meta/Service;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-static {}, Lcom/fiio/music/d/a/a;->a()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating DIDL tree nodes failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/fiio/music/d/a/b;->c:Lorg/fourthline/cling/model/action/ActionInvocation;

    new-instance v2, Lorg/fourthline/cling/model/action/ActionException;

    .line 115
    sget-object v3, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t create list childs: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    invoke-virtual {v1, v2}, Lorg/fourthline/cling/model/action/ActionInvocation;->setFailure(Lorg/fourthline/cling/model/action/ActionException;)V

    .line 117
    iget-object v0, p0, Lcom/fiio/music/d/a/b;->a:Lcom/fiio/music/d/a/a;

    iget-object v1, p0, Lcom/fiio/music/d/a/b;->c:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-static {v0, v1}, Lcom/fiio/music/d/a/a;->a(Lcom/fiio/music/d/a/a;Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 118
    iget-object v0, p0, Lcom/fiio/music/d/a/b;->a:Lcom/fiio/music/d/a/a;

    invoke-static {v0}, Lcom/fiio/music/d/a/a;->c(Lcom/fiio/music/d/a/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 95
    :cond_3
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/item/Item;

    .line 96
    invoke-static {}, Lcom/fiio/music/d/a/a;->a()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "add child item"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 101
    new-instance v2, Lcom/fiio/music/d/a/c;

    iget-object v3, p0, Lcom/fiio/music/d/a/b;->a:Lcom/fiio/music/d/a/a;

    invoke-static {v3}, Lcom/fiio/music/d/a/a;->b(Lcom/fiio/music/d/a/a;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/fiio/music/d/a/c;-><init>(Lorg/fourthline/cling/support/model/item/Item;Lorg/fourthline/cling/model/meta/Service;)V

    .line 102
    invoke-virtual {v2}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getResources()Ljava/util/List;

    move-result-object v0

    .line 103
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Res;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Res;->getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getContentFormatMimeType()Lorg/seamless/util/MimeType;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lorg/seamless/util/MimeType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v3, p0, Lcom/fiio/music/d/a/b;->a:Lcom/fiio/music/d/a/a;

    invoke-static {v0}, Lcom/fiio/music/d/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/fiio/music/d/a/b;->a:Lcom/fiio/music/d/a/a;

    invoke-static {v0}, Lcom/fiio/music/d/a/a;->a(Lcom/fiio/music/d/a/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 123
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/item/Item;

    .line 124
    new-instance v1, Lcom/fiio/music/d/a/c;

    .line 125
    iget-object v3, p0, Lcom/fiio/music/d/a/b;->a:Lcom/fiio/music/d/a/a;

    invoke-static {v3}, Lcom/fiio/music/d/a/a;->b(Lcom/fiio/music/d/a/a;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v3

    .line 124
    invoke-direct {v1, v0, v3}, Lcom/fiio/music/d/a/c;-><init>(Lorg/fourthline/cling/support/model/item/Item;Lorg/fourthline/cling/model/meta/Service;)V

    .line 126
    invoke-virtual {v1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/item/Item;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 127
    invoke-virtual {v1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/item/Item;->getResources()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 128
    invoke-virtual {v1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/item/Item;->getResources()Ljava/util/List;

    move-result-object v3

    .line 129
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/Res;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Res;->getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 131
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/Res;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Res;->getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getContentFormat()Ljava/lang/String;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_1

    .line 133
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/Res;

    .line 134
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Res;->getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getContentFormat()Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/Res;

    .line 139
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Res;->getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getContentFormat()Ljava/lang/String;

    move-result-object v1

    .line 141
    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 136
    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 142
    const-string v4, "image"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 143
    sget-object v1, Lcom/fiio/music/activity/p;->d:Ljava/util/ArrayList;

    .line 144
    new-instance v3, Lcom/fiio/music/d/a/c;

    .line 146
    iget-object v4, p0, Lcom/fiio/music/d/a/b;->a:Lcom/fiio/music/d/a/a;

    invoke-static {v4}, Lcom/fiio/music/d/a/a;->b(Lcom/fiio/music/d/a/a;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v4

    .line 144
    invoke-direct {v3, v0, v4}, Lcom/fiio/music/d/a/c;-><init>(Lorg/fourthline/cling/support/model/item/Item;Lorg/fourthline/cling/model/meta/Service;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 147
    :cond_5
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/Res;

    .line 148
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Res;->getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getContentFormat()Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/Res;

    .line 153
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Res;->getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getContentFormat()Ljava/lang/String;

    move-result-object v1

    .line 155
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 150
    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 156
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 157
    sget-object v1, Lcom/fiio/music/activity/p;->f:Ljava/util/ArrayList;

    .line 158
    new-instance v3, Lcom/fiio/music/d/a/c;

    .line 160
    iget-object v4, p0, Lcom/fiio/music/d/a/b;->a:Lcom/fiio/music/d/a/a;

    invoke-static {v4}, Lcom/fiio/music/d/a/a;->b(Lcom/fiio/music/d/a/a;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v4

    .line 158
    invoke-direct {v3, v0, v4}, Lcom/fiio/music/d/a/c;-><init>(Lorg/fourthline/cling/support/model/item/Item;Lorg/fourthline/cling/model/meta/Service;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 162
    :cond_6
    sget-object v1, Lcom/fiio/music/activity/p;->e:Ljava/util/ArrayList;

    .line 163
    new-instance v3, Lcom/fiio/music/d/a/c;

    .line 165
    iget-object v4, p0, Lcom/fiio/music/d/a/b;->a:Lcom/fiio/music/d/a/a;

    invoke-static {v4}, Lcom/fiio/music/d/a/a;->b(Lcom/fiio/music/d/a/a;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v4

    .line 163
    invoke-direct {v3, v0, v4}, Lcom/fiio/music/d/a/c;-><init>(Lorg/fourthline/cling/support/model/item/Item;Lorg/fourthline/cling/model/meta/Service;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method
