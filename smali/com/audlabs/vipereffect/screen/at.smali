.class final Lcom/audlabs/vipereffect/screen/at;
.super Ljava/lang/Thread;
.source "VDdcFragment.java"


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/VDdcFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/at;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

    iput-object p2, p0, Lcom/audlabs/vipereffect/screen/at;->b:Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/at;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->access$2(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/at;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->access$5(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/at;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->access$3(Lcom/audlabs/vipereffect/screen/VDdcFragment;I)V

    .line 113
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/at;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/at;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

    invoke-virtual {v1}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/audlabs/vipereffect/data/DDCDatabase;->queryManufacturerAndModel(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->access$6(Lcom/audlabs/vipereffect/screen/VDdcFragment;Ljava/util/Map;)V

    .line 114
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/at;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->access$7(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/at;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->access$6(Lcom/audlabs/vipereffect/screen/VDdcFragment;Ljava/util/Map;)V

    .line 116
    :cond_0
    invoke-static {}, Lcom/audlabs/vipereffect/util/StaticEnvironment;->getV4aCustomDDCPath()Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 119
    const-string v0, "ViPER4Android"

    const-string v3, "Custom DDC directory does not exists"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 123
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 124
    const-string v0, ".vdc"

    invoke-static {v1, v0, v3}, Lcom/audlabs/vipereffect/util/Utils;->getFileNameList(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 125
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 126
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/at;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->access$7(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 146
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/at;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->access$9(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 147
    return-void

    .line 122
    :cond_3
    const-string v0, "ViPER4Android"

    const-string v3, "Custom DDC directory exists"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/at;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->access$7(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "FILE:"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 132
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 133
    const-string v0, ""

    iget-object v5, p0, Lcom/audlabs/vipereffect/screen/at;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 134
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/audlabs/vipereffect/screen/at;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/at;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->access$8(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 139
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/at;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

    invoke-static {v0, v3}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->access$3(Lcom/audlabs/vipereffect/screen/VDdcFragment;I)V

    .line 141
    :cond_7
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/at;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->access$2(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/at;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->access$5(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 143
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2
.end method
