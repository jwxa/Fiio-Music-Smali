.class public Lcom/fiio/music/adapter/ScanListAdapter$MyListener;
.super Ljava/lang/Object;
.source "ScanListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/fiio/music/adapter/ScanListAdapter;


# direct methods
.method public constructor <init>(Lcom/fiio/music/adapter/ScanListAdapter;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/fiio/music/adapter/ScanListAdapter$MyListener;->this$0:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/ScanData;

    .line 159
    if-eqz p2, :cond_4

    .line 160
    iget-object v1, p0, Lcom/fiio/music/adapter/ScanListAdapter$MyListener;->this$0:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ScanListAdapter;->access$1(Lcom/fiio/music/adapter/ScanListAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "$"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/entity/ScanData;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 161
    iget-object v1, p0, Lcom/fiio/music/adapter/ScanListAdapter$MyListener;->this$0:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ScanListAdapter;->access$1(Lcom/fiio/music/adapter/ScanListAdapter;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "$"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fiio/music/entity/ScanData;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/adapter/ScanListAdapter;->access$2(Lcom/fiio/music/adapter/ScanListAdapter;Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/fiio/music/adapter/ScanListAdapter$MyListener;->this$0:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ScanListAdapter;->access$3(Lcom/fiio/music/adapter/ScanListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_2

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/adapter/ScanListAdapter$MyListener;->this$0:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ScanListAdapter;->access$4(Lcom/fiio/music/adapter/ScanListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/ScanData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/fiio/music/adapter/ScanListAdapter$MyListener;->this$0:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ScanListAdapter;->access$4(Lcom/fiio/music/adapter/ScanListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/ScanData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_1
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/ScanData;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/fiio/music/adapter/ScanListAdapter$MyListener;->this$0:Lcom/fiio/music/adapter/ScanListAdapter;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/fiio/music/adapter/ScanListAdapter;->isCheckedAll(Ljava/io/File;)Z

    move-result v1

    .line 183
    iget-object v0, p0, Lcom/fiio/music/adapter/ScanListAdapter$MyListener;->this$0:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ScanListAdapter;->access$5(Lcom/fiio/music/adapter/ScanListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->a(Z)V

    .line 185
    return-void

    .line 163
    :cond_2
    invoke-virtual {v0}, Lcom/fiio/music/entity/ScanData;->getFilePath()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/fiio/music/adapter/ScanListAdapter$MyListener;->this$0:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ScanListAdapter;->access$3(Lcom/fiio/music/adapter/ScanListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/ScanData;

    invoke-virtual {v1}, Lcom/fiio/music/entity/ScanData;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    iget-object v1, p0, Lcom/fiio/music/adapter/ScanListAdapter$MyListener;->this$0:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ScanListAdapter;->access$3(Lcom/fiio/music/adapter/ScanListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/ScanData;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/fiio/music/entity/ScanData;->setChecked(Z)V

    .line 162
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 174
    :cond_4
    iget-object v1, p0, Lcom/fiio/music/adapter/ScanListAdapter$MyListener;->this$0:Lcom/fiio/music/adapter/ScanListAdapter;

    iget-object v2, p0, Lcom/fiio/music/adapter/ScanListAdapter$MyListener;->this$0:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/ScanListAdapter;->access$1(Lcom/fiio/music/adapter/ScanListAdapter;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "$"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/entity/ScanData;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/adapter/ScanListAdapter;->access$2(Lcom/fiio/music/adapter/ScanListAdapter;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/fiio/music/adapter/ScanListAdapter$MyListener;->this$0:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ScanListAdapter;->access$4(Lcom/fiio/music/adapter/ScanListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/ScanData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/fiio/music/adapter/ScanListAdapter$MyListener;->this$0:Lcom/fiio/music/adapter/ScanListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ScanListAdapter;->access$4(Lcom/fiio/music/adapter/ScanListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/ScanData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
