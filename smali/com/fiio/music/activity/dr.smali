.class final Lcom/fiio/music/activity/dr;
.super Ljava/lang/Object;
.source "MyMusicListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/dq;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:I

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/dq;ILjava/lang/String;ILjava/lang/String;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iput p2, p0, Lcom/fiio/music/activity/dr;->b:I

    iput-object p3, p0, Lcom/fiio/music/activity/dr;->c:Ljava/lang/String;

    iput p4, p0, Lcom/fiio/music/activity/dr;->d:I

    iput-object p5, p0, Lcom/fiio/music/activity/dr;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/fiio/music/activity/dr;->f:Lcom/fiio/music/custom/f;

    .line 1173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1177
    iget v0, p0, Lcom/fiio/music/activity/dr;->b:I

    if-nez v0, :cond_1

    .line 1178
    iget-object v0, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v0, v0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$49(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/b/k;->g()V

    .line 1180
    iget-object v0, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v0, v0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$22(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/dr;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/bw;->b(Ljava/lang/String;)V

    .line 1181
    iget-object v0, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v0, v0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$22(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/bw;->b()V

    .line 1183
    iget-object v0, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v0, v0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->n()Ljava/lang/String;

    move-result-object v0

    .line 1184
    iget-object v1, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v1, v1, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->l()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v1, v1, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v0, v0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->f()V

    .line 1203
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/dr;->f:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 1204
    iget-object v0, p0, Lcom/fiio/music/activity/dr;->f:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 1205
    iget-object v0, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v0, v0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$7(Lcom/fiio/music/activity/MyMusicListActivity;)V

    .line 1206
    return-void

    .line 1188
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v0, v0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$18(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/b/j;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/activity/dr;->d:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/j;->b(I)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v0, v0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$22(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/bw;

    iget-object v0, p0, Lcom/fiio/music/activity/dr;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1189
    iget-object v0, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v0, v0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v1, v1, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$13(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v2, v2, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    .line 1190
    iget-object v3, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v3, v3, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/MyMusicListActivity;->access$1(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0101

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1189
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$14(Lcom/fiio/music/activity/MyMusicListActivity;Landroid/widget/Toast;)V

    .line 1191
    iget-object v0, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v0, v0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$9(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/adapter/PlayListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v1, v1, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$18(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/b/j;->a()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/adapter/PlayListAdapter;->setDate(Ljava/util/List;Z)V

    .line 1193
    iget-object v0, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v0, v0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->n()Ljava/lang/String;

    move-result-object v0

    .line 1194
    iget-object v1, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v1, v1, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->l()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fiio/music/activity/dr;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v0, v0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->f()V

    goto/16 :goto_0

    .line 1198
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v0, v0, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v1, v1, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$13(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v2, v2, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    .line 1199
    iget-object v3, p0, Lcom/fiio/music/activity/dr;->a:Lcom/fiio/music/activity/dq;

    iget-object v3, v3, Lcom/fiio/music/activity/dq;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/MyMusicListActivity;->access$1(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0102

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1198
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$14(Lcom/fiio/music/activity/MyMusicListActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0
.end method
