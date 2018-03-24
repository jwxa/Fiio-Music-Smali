.class public Lcom/audlabs/vipereffect/main/MainFragment;
.super Landroid/preference/PreferenceFragment;
.source "MainFragment.java"


# instance fields
.field private mConfig:Ljava/lang/String;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMianAdapter:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRecyclerView:Landroid/widget/ListView;

.field private mUIReceiver:Lcom/audlabs/vipereffect/main/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/main/MainFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/MainFragment;->mDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/audlabs/vipereffect/main/MainFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/MainFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2(Lcom/audlabs/vipereffect/main/MainFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/MainFragment;->mConfig:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/audlabs/vipereffect/main/MainFragment;)Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/MainFragment;->mMianAdapter:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/audlabs/vipereffect/main/MainFragment;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/audlabs/vipereffect/main/MainFragment;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/main/MainFragment;-><init>()V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string v2, "config"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/main/MainFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v0
.end method


# virtual methods
.method public getDatas()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 292
    const-string v2, "ICON"

    const v3, 0x7f030014

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0121

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v2, "KEY"

    const-string v3, "vipereffect.headphonefx.playbackgain.enable"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v2, "FLAG"

    const-string v3, "playbackgain"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 299
    const-string v2, "ICON"

    const v3, 0x7f030040

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0133

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v2, "KEY"

    const-string v3, "vipereffect.headphonefx.fetcompressor.enable"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v2, "FLAG"

    const-string v3, "compressor"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 313
    const-string v2, "ICON"

    const v3, 0x7f03002f

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c012e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v2, "KEY"

    const-string v3, "vipereffect.headphonefx.vse.enable"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v2, "FLAG"

    const-string v3, "vse"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 320
    const-string v2, "ICON"

    const v3, 0x7f030013

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0144

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v2, "KEY"

    const-string v3, "vipereffect.headphonefx.fireq.enable"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v2, "FLAG"

    const-string v3, "fireq"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 327
    const-string v2, "ICON"

    const v3, 0x7f030023

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0154

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v2, "KEY"

    const-string v3, "vipereffect.headphonefx.convolver.enable"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v2, "FLAG"

    const-string v3, "convolver"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 334
    const-string v2, "ICON"

    const v3, 0x7f03000b

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c015a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v2, "KEY"

    const-string v3, "vipereffect.headphonefx.colorfulmusic.enable"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v2, "FLAG"

    const-string v3, "colorfulmusic"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 341
    const-string v2, "ICON"

    const v3, 0x7f03000a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c015d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v2, "KEY"

    const-string v3, "vipereffect.headphonefx.diffsurr.enable"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v2, "FLAG"

    const-string v3, "diffsurr"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 355
    const-string v2, "ICON"

    const v3, 0x7f030037

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c015f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v2, "KEY"

    const-string v3, "vipereffect.headphonefx.reverb.enable"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v2, "FLAG"

    const-string v3, "reverb"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 362
    const-string v2, "ICON"

    const v3, 0x7f03000e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0146

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v2, "KEY"

    const-string v3, "vipereffect.headphonefx.dynamicsystem.enable"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v2, "FLAG"

    const-string v3, "dynamicsystem"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 369
    const-string v2, "ICON"

    const v3, 0x7f03000c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c014a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v2, "KEY"

    const-string v3, "vipereffect.headphonefx.tube.enable"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 375
    const-string v2, "ICON"

    const v3, 0x7f03000d

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c014b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v2, "KEY"

    const-string v3, "vipereffect.headphonefx.fidelity.bass.enable"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v2, "FLAG"

    const-string v3, "bass"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 382
    const-string v2, "ICON"

    const v3, 0x7f030030

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c014f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v2, "KEY"

    const-string v3, "vipereffect.headphonefx.fidelity.clarity.enable"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v2, "FLAG"

    const-string v3, "clarity"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 389
    const-string v2, "ICON"

    const v3, 0x7f03003a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0152

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v2, "KEY"

    const-string v3, "vipereffect.headphonefx.cure.enable"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v2, "FLAG"

    const-string v3, "cure"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 396
    const-string v2, "ICON"

    const v3, 0x7f030002

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0131

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v2, "KEY"

    const-string v3, "vipereffect.headphonefx.analogx.enable"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v2, "FLAG"

    const-string v3, "analogx"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 403
    const-string v2, "ICON"

    const v3, 0x7f030042

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string v2, "TITLE"

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c011b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v2, "FLAG"

    const-string v3, "limiter"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const-string v0, "ViPER4Android"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/main/MainFragment;->mConfig:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.audlabs.vipereffect."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/audlabs/vipereffect/main/MainFragment;->mConfig:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 58
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    .line 59
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/main/MainFragment;->mPreferences:Landroid/content/SharedPreferences;

    .line 60
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/MainFragment;->mDatas:Ljava/util/List;

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getDatas()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/main/MainFragment;->mDatas:Ljava/util/List;

    .line 63
    :cond_0
    new-instance v0, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;-><init>(Lcom/audlabs/vipereffect/main/MainFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/audlabs/vipereffect/main/MainFragment;->mMianAdapter:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    .line 64
    new-instance v0, Lcom/audlabs/vipereffect/main/j;

    invoke-direct {v0, p0}, Lcom/audlabs/vipereffect/main/j;-><init>(Lcom/audlabs/vipereffect/main/MainFragment;)V

    iput-object v0, p0, Lcom/audlabs/vipereffect/main/MainFragment;->mUIReceiver:Lcom/audlabs/vipereffect/main/j;

    .line 65
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/audlabs/vipereffect/main/MainFragment;->mUIReceiver:Lcom/audlabs/vipereffect/main/j;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.audlabs.viperfx.updatemainui"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/MainFragment;->mRecyclerView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/audlabs/vipereffect/main/MainFragment;->mRecyclerView:Landroid/widget/ListView;

    .line 90
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/MainFragment;->mRecyclerView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/main/MainFragment;->mMianAdapter:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/MainFragment;->mRecyclerView:Landroid/widget/ListView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 82
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/audlabs/vipereffect/main/MainFragment;->mUIReceiver:Lcom/audlabs/vipereffect/main/j;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 77
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 72
    return-void
.end method
