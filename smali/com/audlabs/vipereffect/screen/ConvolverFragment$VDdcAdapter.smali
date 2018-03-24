.class public Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConvolverFragment.java"


# instance fields
.field private mInfater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/audlabs/vipereffect/screen/ConvolverFragment;


# direct methods
.method public constructor <init>(Lcom/audlabs/vipereffect/screen/ConvolverFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 247
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->this$0:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 248
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->mInfater:Landroid/view/LayoutInflater;

    .line 249
    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;)Lcom/audlabs/vipereffect/screen/ConvolverFragment;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->this$0:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->this$0:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$1(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->this$0:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$1(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 263
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 268
    if-nez p2, :cond_0

    .line 270
    new-instance v1, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter$ViewHolder;-><init>(Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;)V

    .line 271
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->mInfater:Landroid/view/LayoutInflater;

    const v2, 0x7f040087

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 272
    const v0, 0x7f0b0194

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter$ViewHolder;->ivSelect:Landroid/widget/ImageView;

    .line 273
    const v0, 0x7f0b0195

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 274
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 284
    :goto_0
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->this$0:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$2(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 285
    iget-object v1, v0, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter$ViewHolder;->ivSelect:Landroid/widget/ImageView;

    const v2, 0x7f030033

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    :goto_1
    iget-object v1, v0, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->this$0:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$1(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    new-instance v0, Lcom/audlabs/vipereffect/screen/i;

    invoke-direct {v0, p0, p1}, Lcom/audlabs/vipereffect/screen/i;-><init>(Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    return-object p2

    .line 276
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter$ViewHolder;

    goto :goto_0

    .line 287
    :cond_1
    iget-object v1, v0, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter$ViewHolder;->ivSelect:Landroid/widget/ImageView;

    const v2, 0x7f030032

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
