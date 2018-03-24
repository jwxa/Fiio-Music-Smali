.class final Lcom/fiio/music/util/af;
.super Ljava/lang/Object;
.source "FiioPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/util/FiioPopupWindow;

.field private b:I

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/fiio/music/util/FiioPopupWindow;ILandroid/content/Context;)V
    .locals 0

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1139
    iput p2, p0, Lcom/fiio/music/util/af;->b:I

    .line 1140
    iput-object p3, p0, Lcom/fiio/music/util/af;->c:Landroid/content/Context;

    .line 1142
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1148
    const-string v0, "zxy - - - "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onclick   :  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fiio/music/util/af;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    iget v1, p0, Lcom/fiio/music/util/af;->b:I

    if-eq v0, v1, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    iget v0, v0, Lcom/fiio/music/util/FiioPopupWindow;->b:I

    iget-object v1, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    iget v1, v1, Lcom/fiio/music/util/FiioPopupWindow;->a:I

    if-ne v0, v1, :cond_2

    .line 1155
    iget-object v0, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->f(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/ac;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/util/af;->b:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/ac;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1156
    iget-object v1, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->f(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/ac;

    move-result-object v1

    iget v2, p0, Lcom/fiio/music/util/af;->b:I

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/ac;->a(I)V

    .line 1157
    iget-object v1, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v2}, Lcom/fiio/music/util/FiioPopupWindow;->f(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/util/ac;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1158
    iget-object v1, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->f(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/ac;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v2}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/util/ac;->a(II)V

    .line 1166
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->f(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/ac;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 1169
    iget-object v1, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->h(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/service/h;->a(Ljava/util/ArrayList;)V

    .line 1171
    invoke-static {}, Lcom/fiio/music/util/cj;->a()Lcom/fiio/music/util/cj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/util/cj;->a(Ljava/util/ArrayList;)V

    .line 1199
    :cond_0
    :goto_1
    return-void

    .line 1161
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->f(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/ac;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v2}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/util/ac;->a(II)V

    goto :goto_0

    .line 1174
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->b(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/aa;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/util/af;->b:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/aa;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1175
    iget-object v1, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->b(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/aa;

    move-result-object v1

    iget v2, p0, Lcom/fiio/music/util/af;->b:I

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/aa;->a(I)V

    .line 1176
    iget-object v1, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v2}, Lcom/fiio/music/util/FiioPopupWindow;->b(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/util/aa;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1177
    iget-object v1, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->b(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v2}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/util/aa;->a(Ljava/lang/String;I)V

    .line 1183
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->h(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/service/h;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    iget-object v1, v1, Lcom/fiio/music/util/FiioPopupWindow;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->a(Ljava/util/List;)V

    .line 1185
    iget-object v0, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v0

    iget-object v1, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->b(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/util/aa;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 1186
    iget-object v0, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->b(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/aa;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/util/af;->b:I

    iget-object v2, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v2}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/aa;->a(II)V

    .line 1193
    :goto_3
    invoke-static {}, Lcom/fiio/music/util/cj;->a()Lcom/fiio/music/util/cj;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->b(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/util/aa;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cj;->b(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1180
    :cond_3
    iget-object v1, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v1}, Lcom/fiio/music/util/FiioPopupWindow;->b(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v2}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/util/aa;->a(Ljava/lang/String;I)V

    goto :goto_2

    .line 1189
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v0}, Lcom/fiio/music/util/FiioPopupWindow;->b(Lcom/fiio/music/util/FiioPopupWindow;)Lcom/fiio/music/util/aa;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/util/af;->b:I

    iget-object v2, p0, Lcom/fiio/music/util/af;->a:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-static {v2}, Lcom/fiio/music/util/FiioPopupWindow;->m(Lcom/fiio/music/util/FiioPopupWindow;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/aa;->a(II)V

    goto :goto_3
.end method
