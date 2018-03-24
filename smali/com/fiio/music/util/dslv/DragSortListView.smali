.class public Lcom/fiio/music/util/dslv/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# instance fields
.field private A:[Landroid/view/View;

.field private B:Lcom/fiio/music/util/dslv/i;

.field private C:F

.field private D:F

.field private E:I

.field private F:I

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:Lcom/fiio/music/util/dslv/h;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:Z

.field private T:Z

.field private U:Lcom/fiio/music/util/dslv/n;

.field private V:Landroid/view/MotionEvent;

.field private W:I

.field private a:Landroid/view/View;

.field private aa:F

.field private ab:F

.field private ac:Lcom/fiio/music/util/dslv/e;

.field private ad:Z

.field private ae:Lcom/fiio/music/util/dslv/k;

.field private af:Z

.field private ag:Z

.field private ah:Lcom/fiio/music/util/dslv/o;

.field private ai:Lcom/fiio/music/util/dslv/q;

.field private aj:Lcom/fiio/music/util/dslv/p;

.field private ak:Lcom/fiio/music/util/dslv/l;

.field private al:Z

.field private am:F

.field private an:Z

.field private ao:Z

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;

.field private d:I

.field private e:Z

.field private f:Landroid/database/DataSetObserver;

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/fiio/music/util/dslv/g;

.field private s:Lcom/fiio/music/util/dslv/m;

.field private t:Lcom/fiio/music/util/dslv/r;

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    .prologue
    .line 444
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->b:Landroid/graphics/Point;

    .line 78
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->c:Landroid/graphics/Point;

    .line 88
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->e:Z

    .line 99
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->g:F

    .line 100
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->h:F

    .line 125
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->l:Z

    .line 181
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->u:Z

    .line 192
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    .line 199
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->w:I

    .line 215
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->z:I

    .line 221
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->A:[Landroid/view/View;

    .line 233
    const v2, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->C:F

    .line 240
    const v2, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->D:F

    .line 264
    const/high16 v2, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->K:F

    .line 272
    new-instance v2, Lcom/fiio/music/util/dslv/c;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/fiio/music/util/dslv/c;-><init>(Lcom/fiio/music/util/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->L:Lcom/fiio/music/util/dslv/h;

    .line 336
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->R:I

    .line 342
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->S:Z

    .line 347
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->T:Z

    .line 352
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->U:Lcom/fiio/music/util/dslv/n;

    .line 372
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->W:I

    .line 379
    const/high16 v2, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->aa:F

    .line 388
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->ab:F

    .line 401
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->ad:Z

    .line 411
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->af:Z

    .line 418
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->ag:Z

    .line 432
    new-instance v2, Lcom/fiio/music/util/dslv/o;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/fiio/music/util/dslv/o;-><init>(Lcom/fiio/music/util/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->ah:Lcom/fiio/music/util/dslv/o;

    .line 441
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->am:F

    .line 1696
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->an:Z

    .line 2178
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->ao:Z

    .line 446
    const/16 v3, 0x96

    .line 448
    const/16 v2, 0x96

    .line 450
    if-eqz p2, :cond_2

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 452
    sget-object v3, Lcom/fiio/music/R$styleable;->DragSortListView:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 451
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 454
    const/4 v2, 0x1

    .line 455
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 454
    invoke-virtual {v11, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->w:I

    .line 458
    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 457
    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->ad:Z

    .line 460
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->ad:Z

    if-eqz v2, :cond_0

    .line 461
    new-instance v2, Lcom/fiio/music/util/dslv/k;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/fiio/music/util/dslv/k;-><init>(Lcom/fiio/music/util/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->ae:Lcom/fiio/music/util/dslv/k;

    .line 465
    :cond_0
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->g:F

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->g:F

    .line 466
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->g:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->h:F

    .line 468
    const/16 v2, 0xa

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->u:Z

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->u:Z

    .line 470
    const/4 v2, 0x0

    .line 471
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 472
    const/4 v5, 0x7

    .line 473
    const/high16 v6, 0x3f400000    # 0.75f

    .line 471
    invoke-virtual {v11, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 470
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->aa:F

    .line 475
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->aa:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->l:Z

    .line 478
    const/4 v2, 0x1

    .line 479
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->C:F

    .line 477
    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 481
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fiio/music/util/dslv/DragSortListView;->setDragScrollStart(F)V

    .line 484
    const/4 v2, 0x2

    .line 485
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->K:F

    .line 483
    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->K:F

    .line 488
    const/16 v2, 0x8

    .line 489
    const/16 v3, 0x96

    .line 487
    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 492
    const/16 v2, 0x9

    .line 493
    const/16 v3, 0x96

    .line 491
    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 496
    const/16 v2, 0x11

    .line 497
    const/4 v3, 0x1

    .line 495
    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 499
    if-eqz v2, :cond_1

    .line 501
    const/16 v2, 0xc

    .line 502
    const/4 v3, 0x0

    .line 500
    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 504
    const/4 v2, 0x4

    .line 505
    const/4 v3, 0x1

    .line 503
    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 507
    const/16 v2, 0xb

    .line 508
    const/4 v3, 0x1

    .line 506
    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 510
    const/16 v2, 0xd

    .line 511
    const/4 v3, 0x0

    .line 509
    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 513
    const/16 v2, 0xe

    .line 514
    const/4 v3, 0x0

    .line 512
    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 516
    const/16 v2, 0xf

    .line 517
    const/4 v3, 0x0

    .line 515
    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 519
    const/16 v2, 0x10

    .line 520
    const/4 v3, 0x0

    .line 518
    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 522
    const/4 v2, 0x3

    .line 523
    const/high16 v3, -0x1000000

    .line 521
    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    .line 525
    new-instance v2, Lcom/fiio/music/util/dslv/a;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/fiio/music/util/dslv/a;-><init>(Lcom/fiio/music/util/dslv/DragSortListView;IIIII)V

    .line 528
    invoke-virtual {v2, v12}, Lcom/fiio/music/util/dslv/a;->b(Z)V

    .line 529
    invoke-virtual {v2, v13}, Lcom/fiio/music/util/dslv/a;->a(Z)V

    .line 530
    invoke-virtual {v2, v14}, Lcom/fiio/music/util/dslv/a;->b(I)V

    .line 532
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->U:Lcom/fiio/music/util/dslv/n;

    .line 533
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fiio/music/util/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 536
    :cond_1
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    move v2, v9

    move v3, v10

    .line 539
    :cond_2
    new-instance v4, Lcom/fiio/music/util/dslv/i;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/fiio/music/util/dslv/i;-><init>(Lcom/fiio/music/util/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/fiio/music/util/dslv/DragSortListView;->B:Lcom/fiio/music/util/dslv/i;

    .line 541
    if-lez v3, :cond_3

    .line 543
    new-instance v4, Lcom/fiio/music/util/dslv/q;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lcom/fiio/music/util/dslv/q;-><init>(Lcom/fiio/music/util/dslv/DragSortListView;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/fiio/music/util/dslv/DragSortListView;->ai:Lcom/fiio/music/util/dslv/q;

    .line 546
    :cond_3
    if-lez v2, :cond_4

    .line 547
    new-instance v3, Lcom/fiio/music/util/dslv/l;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/fiio/music/util/dslv/l;-><init>(Lcom/fiio/music/util/dslv/DragSortListView;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->ak:Lcom/fiio/music/util/dslv/l;

    .line 550
    :cond_4
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 551
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 550
    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->V:Landroid/view/MotionEvent;

    .line 554
    new-instance v2, Lcom/fiio/music/util/dslv/d;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/fiio/music/util/dslv/d;-><init>(Lcom/fiio/music/util/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->f:Landroid/database/DataSetObserver;

    .line 571
    return-void

    .line 475
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/fiio/music/util/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->K:F

    return v0
.end method

.method private a(II)I
    .locals 6

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 919
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v1

    .line 925
    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, p2

    .line 972
    :goto_0
    return v0

    .line 929
    :cond_1
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getDividerHeight()I

    move-result v0

    .line 933
    iget v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->x:I

    iget v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->w:I

    sub-int/2addr v1, v2

    .line 934
    invoke-direct {p0, p1}, Lcom/fiio/music/util/dslv/DragSortListView;->d(I)I

    move-result v2

    .line 935
    invoke-direct {p0, p1}, Lcom/fiio/music/util/dslv/DragSortListView;->b(I)I

    move-result v3

    .line 940
    iget v4, p0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    iget v5, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    if-gt v4, v5, :cond_5

    .line 943
    iget v4, p0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    if-ne p1, v4, :cond_4

    iget v4, p0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    iget v5, p0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    if-eq v4, v5, :cond_4

    .line 944
    iget v4, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    if-ne p1, v4, :cond_3

    .line 945
    add-int v1, p2, v3

    iget v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->x:I

    sub-int p2, v1, v3

    .line 966
    :cond_2
    :goto_1
    iget v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    if-gt p1, v1, :cond_7

    .line 967
    iget v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->x:I

    sub-int v0, v1, v0

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/fiio/music/util/dslv/DragSortListView;->d(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    .line 968
    goto :goto_0

    .line 947
    :cond_3
    sub-int/2addr v3, v2

    .line 948
    add-int/2addr v3, p2

    sub-int p2, v3, v1

    .line 950
    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    if-le p1, v3, :cond_2

    iget v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    if-gt p1, v3, :cond_2

    .line 951
    sub-int/2addr p2, v1

    .line 954
    goto :goto_1

    .line 957
    :cond_5
    iget v4, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    if-le p1, v4, :cond_6

    iget v4, p0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    if-gt p1, v4, :cond_6

    .line 958
    add-int/2addr p2, v1

    .line 959
    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    iget v4, p0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    if-eq v1, v4, :cond_2

    .line 960
    sub-int v1, v3, v2

    .line 961
    add-int/2addr p2, v1

    goto :goto_1

    .line 969
    :cond_7
    sub-int v0, v2, v0

    iget v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->x:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    goto :goto_0
.end method

.method static synthetic a(Lcom/fiio/music/util/dslv/DragSortListView;II)I
    .locals 1

    .prologue
    .line 916
    invoke-direct {p0, p1, p2}, Lcom/fiio/music/util/dslv/DragSortListView;->a(II)I

    move-result v0

    return v0
.end method

.method private a(IF)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1416
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    if-ne v0, v2, :cond_3

    .line 1418
    :cond_0
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    if-nez v0, :cond_1

    .line 1420
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    .line 1421
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    .line 1422
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    .line 1423
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->i:I

    .line 1424
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1425
    if-eqz v0, :cond_1

    .line 1426
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1430
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    .line 1431
    iput p2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->am:F

    .line 1433
    iget-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->T:Z

    if-eqz v0, :cond_2

    .line 1434
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->W:I

    packed-switch v0, :pswitch_data_0

    .line 1444
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ai:Lcom/fiio/music/util/dslv/q;

    if-eqz v0, :cond_4

    .line 1445
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ai:Lcom/fiio/music/util/dslv/q;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/q;->c()V

    .line 1450
    :cond_3
    :goto_1
    return-void

    .line 1436
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1439
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1447
    :cond_4
    invoke-direct {p0, p1}, Lcom/fiio/music/util/dslv/DragSortListView;->c(I)V

    goto :goto_1

    .line 1434
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(ILandroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 755
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getDividerHeight()I

    move-result v3

    .line 758
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    .line 759
    invoke-virtual {p0, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 761
    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getPaddingLeft()I

    move-result v4

    .line 763
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getPaddingRight()I

    move-result v5

    sub-int v5, v1, v5

    .line 767
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 769
    iget v6, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    if-le p1, v6, :cond_1

    .line 770
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v1, v0

    .line 771
    add-int v0, v1, v3

    .line 779
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 780
    invoke-virtual {p2, v4, v1, v5, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 781
    invoke-virtual {v2, v4, v1, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 782
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 783
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 786
    :cond_0
    return-void

    .line 773
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    sub-int/2addr v0, v1

    .line 774
    sub-int v1, v0, v3

    goto :goto_0
.end method

.method private a(ILandroid/view/View;Z)V
    .locals 3

    .prologue
    .line 1888
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1890
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    if-eq p1, v0, :cond_5

    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    if-eq p1, v0, :cond_5

    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    if-eq p1, v0, :cond_5

    .line 1891
    const/4 v0, -0x2

    .line 1896
    :goto_0
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_0

    .line 1897
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1898
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1902
    :cond_0
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    if-ne p1, v0, :cond_2

    .line 1903
    :cond_1
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    if-ge p1, v0, :cond_6

    move-object v0, p2

    .line 1904
    check-cast v0, Lcom/fiio/music/util/dslv/DragSortItemView;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/dslv/DragSortItemView;->setGravity(I)V

    .line 1912
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 1913
    const/4 v0, 0x0

    .line 1915
    iget v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1916
    const/4 v0, 0x4

    .line 1919
    :cond_3
    if-eq v0, v1, :cond_4

    .line 1920
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1922
    :cond_4
    return-void

    .line 1893
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/fiio/music/util/dslv/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->b(II)I

    move-result v0

    goto :goto_0

    .line 1905
    :cond_6
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    if-le p1, v0, :cond_2

    move-object v0, p2

    .line 1906
    check-cast v0, Lcom/fiio/music/util/dslv/DragSortItemView;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/dslv/DragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 1677
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1678
    if-eqz v0, :cond_0

    .line 1679
    iget v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->M:I

    iput v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->O:I

    .line 1680
    iget v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->N:I

    iput v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->P:I

    .line 1682
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->M:I

    .line 1683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->N:I

    .line 1684
    if-nez v0, :cond_1

    .line 1685
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->M:I

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->O:I

    .line 1686
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->N:I

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->P:I

    .line 1688
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->M:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->p:I

    .line 1689
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->N:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->q:I

    .line 1690
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2099
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2100
    if-nez v0, :cond_0

    .line 2101
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2102
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2104
    :cond_0
    iget v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->z:I

    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getListPaddingLeft()I

    move-result v2

    .line 2105
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getListPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2104
    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2107
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_1

    .line 2108
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2112
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2113
    return-void

    .line 2110
    :cond_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/fiio/music/util/dslv/DragSortListView;F)V
    .locals 0

    .prologue
    .line 441
    iput p1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->am:F

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/util/dslv/DragSortListView;I)V
    .locals 0

    .prologue
    .line 142
    iput p1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->o:I

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/util/dslv/DragSortListView;ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 1885
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->a(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/util/dslv/DragSortListView;Z)V
    .locals 0

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->af:Z

    return-void
.end method

.method private a(ZF)Z
    .locals 2

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1590
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->B:Lcom/fiio/music/util/dslv/i;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/i;->c()V

    .line 1592
    if-eqz p1, :cond_1

    .line 1593
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, p2}, Lcom/fiio/music/util/dslv/DragSortListView;->a(IF)V

    .line 1602
    :goto_0
    iget-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ad:Z

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ae:Lcom/fiio/music/util/dslv/k;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/k;->c()V

    .line 1606
    :cond_0
    const/4 v0, 0x1

    .line 1609
    :goto_1
    return v0

    .line 1595
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ak:Lcom/fiio/music/util/dslv/l;

    if-eqz v0, :cond_2

    .line 1596
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ak:Lcom/fiio/music/util/dslv/l;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/l;->c()V

    goto :goto_0

    .line 1598
    :cond_2
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->e()V

    goto :goto_0

    .line 1609
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(I)I
    .locals 1

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 838
    if-eqz v0, :cond_0

    .line 840
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 844
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/fiio/music/util/dslv/DragSortListView;->d(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->b(II)I

    move-result v0

    goto :goto_0
.end method

.method private b(II)I
    .locals 4

    .prologue
    .line 2011
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getDividerHeight()I

    .line 2013
    iget-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->l:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    iget v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 2014
    :goto_0
    iget v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->x:I

    iget v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->w:I

    sub-int/2addr v1, v2

    .line 2015
    iget v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ab:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 2019
    iget v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    if-ne p1, v3, :cond_5

    .line 2020
    iget v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    iget v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    if-ne v1, v3, :cond_3

    .line 2021
    if-eqz v0, :cond_2

    .line 2022
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->w:I

    add-int p2, v2, v0

    .line 2045
    :cond_0
    :goto_1
    return p2

    .line 2013
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2024
    :cond_2
    iget p2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->x:I

    goto :goto_1

    .line 2026
    :cond_3
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    iget v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    if-ne v0, v1, :cond_4

    .line 2028
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->x:I

    sub-int p2, v0, v2

    .line 2029
    goto :goto_1

    .line 2030
    :cond_4
    iget p2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->w:I

    goto :goto_1

    .line 2032
    :cond_5
    iget v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    if-ne p1, v3, :cond_7

    .line 2033
    if-eqz v0, :cond_6

    .line 2034
    add-int/2addr p2, v2

    .line 2035
    goto :goto_1

    .line 2036
    :cond_6
    add-int/2addr p2, v1

    .line 2038
    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    if-ne p1, v0, :cond_0

    .line 2040
    add-int v0, p2, v1

    sub-int p2, v0, v2

    .line 2041
    goto :goto_1
.end method

.method private b(ILandroid/view/View;Z)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1976
    iget v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    if-ne p1, v1, :cond_1

    .line 2002
    :cond_0
    :goto_0
    return v0

    .line 1981
    :cond_1
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_3

    .line 1987
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1989
    if-eqz v0, :cond_4

    .line 1990
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_4

    .line 1991
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1984
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 1995
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1997
    if-eqz v0, :cond_5

    if-eqz p3, :cond_0

    .line 1998
    :cond_5
    invoke-direct {p0, p2}, Lcom/fiio/music/util/dslv/DragSortListView;->a(Landroid/view/View;)V

    .line 1999
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/fiio/music/util/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->o:I

    return v0
.end method

.method static synthetic b(Lcom/fiio/music/util/dslv/DragSortListView;ILandroid/view/View;)I
    .locals 1

    .prologue
    .line 1975
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/fiio/music/util/dslv/DragSortListView;I)V
    .locals 0

    .prologue
    .line 192
    iput p1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    return-void
.end method

.method static synthetic c(Lcom/fiio/music/util/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->y:I

    return v0
.end method

.method static synthetic c(Lcom/fiio/music/util/dslv/DragSortListView;I)I
    .locals 1

    .prologue
    .line 835
    invoke-direct {p0, p1}, Lcom/fiio/music/util/dslv/DragSortListView;->b(I)I

    move-result v0

    return v0
.end method

.method private c(I)V
    .locals 1

    .prologue
    .line 1530
    const/4 v0, 0x1

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    .line 1533
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->t:Lcom/fiio/music/util/dslv/r;

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->t:Lcom/fiio/music/util/dslv/r;

    invoke-interface {v0, p1}, Lcom/fiio/music/util/dslv/r;->remove(I)V

    .line 1537
    :cond_0
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->l()V

    .line 1539
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->f()V

    .line 1540
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->d()V

    .line 1543
    iget-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->T:Z

    if-eqz v0, :cond_1

    .line 1544
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    .line 1548
    :goto_0
    return-void

    .line 1546
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    goto :goto_0
.end method

.method private c(ILandroid/view/View;Z)V
    .locals 17

    .prologue
    .line 2319
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->af:Z

    .line 2321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->U:Lcom/fiio/music/util/dslv/n;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->c:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->M:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fiio/music/util/dslv/DragSortListView;->N:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->U:Lcom/fiio/music/util/dslv/n;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->b:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fiio/music/util/dslv/DragSortListView;->c:Landroid/graphics/Point;

    invoke-interface {v2, v3}, Lcom/fiio/music/util/dslv/n;->a(Landroid/graphics/Point;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getPaddingLeft()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fiio/music/util/dslv/DragSortListView;->R:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_10

    if-le v2, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iput v3, v2, Landroid/graphics/Point;->x:I

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    if-ge v6, v3, :cond_2

    sub-int v2, v3, v6

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->R:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    if-gt v6, v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getCount()I

    move-result v8

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getCount()I

    move-result v3

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/fiio/music/util/dslv/DragSortListView;->R:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    if-lt v7, v5, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_5
    if-ge v4, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iput v2, v3, Landroid/graphics/Point;->y:I

    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->y:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->d:I

    .line 2323
    move-object/from16 v0, p0

    iget v9, v0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    .line 2324
    move-object/from16 v0, p0

    iget v10, v0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    .line 2326
    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    sub-int v2, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v3, v4, v2

    sub-int v2, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/fiio/music/util/dslv/DragSortListView;->a(II)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getDividerHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/fiio/music/util/dslv/DragSortListView;->d:I

    if-ge v6, v4, :cond_14

    move v2, v3

    move v3, v4

    :goto_2
    if-gez v2, :cond_12

    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/fiio/music/util/dslv/DragSortListView;->ab:F

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/fiio/music/util/dslv/DragSortListView;->l:Z

    if-eqz v13, :cond_18

    sub-int v13, v4, v3

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/fiio/music/util/dslv/DragSortListView;->d:I

    if-ge v14, v4, :cond_16

    :goto_4
    const/high16 v14, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fiio/music/util/dslv/DragSortListView;->aa:F

    mul-float/2addr v14, v15

    int-to-float v13, v13

    mul-float/2addr v13, v14

    float-to-int v13, v13

    int-to-float v14, v13

    add-int/2addr v3, v13

    sub-int v13, v4, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fiio/music/util/dslv/DragSortListView;->d:I

    if-ge v15, v3, :cond_17

    add-int/lit8 v4, v2, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/fiio/music/util/dslv/DragSortListView;->d:I

    sub-int/2addr v3, v13

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v3, v14

    move-object/from16 v0, p0

    iput v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->ab:F

    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    if-ge v3, v5, :cond_19

    move-object/from16 v0, p0

    iput v5, v0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    move v2, v5

    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    if-ne v3, v8, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    if-ne v3, v11, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->ab:F

    cmpl-float v3, v3, v12

    if-eqz v3, :cond_22

    :cond_a
    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fiio/music/util/dslv/DragSortListView;->i:I

    if-eq v2, v4, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->r:Lcom/fiio/music/util/dslv/g;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->r:Lcom/fiio/music/util/dslv/g;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fiio/music/util/dslv/DragSortListView;->i:I

    sub-int/2addr v4, v5

    sub-int v5, v2, v5

    invoke-interface {v3, v4, v5}, Lcom/fiio/music/util/dslv/g;->drag(II)V

    :cond_b
    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->i:I

    const/4 v3, 0x1

    move v8, v3

    .line 2328
    :goto_8
    if-eqz v8, :cond_d

    .line 2329
    invoke-direct/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->i()V

    .line 2330
    const/4 v6, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/fiio/music/util/dslv/DragSortListView;->d(I)I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/fiio/music/util/dslv/DragSortListView;->b(II)I

    move-result v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_20

    sub-int v2, v3, v4

    sub-int v4, v5, v4

    :goto_9
    move-object/from16 v0, p0

    iget v7, v0, Lcom/fiio/music/util/dslv/DragSortListView;->x:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    if-eq v11, v12, :cond_c

    move-object/from16 v0, p0

    iget v11, v0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    if-eq v11, v12, :cond_c

    move-object/from16 v0, p0

    iget v11, v0, Lcom/fiio/music/util/dslv/DragSortListView;->w:I

    sub-int/2addr v7, v11

    :cond_c
    move/from16 v0, p1

    if-gt v0, v9, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    move/from16 v0, p1

    if-le v0, v2, :cond_1f

    sub-int v2, v7, v4

    add-int/lit8 v2, v2, 0x0

    .line 2333
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2334
    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->layoutChildren()V

    .line 2337
    :cond_d
    if-nez v8, :cond_e

    if-eqz p3, :cond_f

    .line 2338
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->invalidate()V

    .line 2341
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->af:Z

    .line 2342
    return-void

    .line 2321
    :cond_10
    move-object/from16 v0, p0

    iget v5, v0, Lcom/fiio/music/util/dslv/DragSortListView;->R:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    if-ge v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iput v3, v2, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->x:I

    add-int/2addr v2, v4

    if-le v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->b:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fiio/music/util/dslv/DragSortListView;->x:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    .line 2326
    :cond_12
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/fiio/music/util/dslv/DragSortListView;->b(I)I

    move-result v4

    if-nez v2, :cond_13

    sub-int/2addr v5, v7

    sub-int v4, v5, v4

    goto/16 :goto_3

    :cond_13
    add-int/2addr v4, v7

    sub-int/2addr v5, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/fiio/music/util/dslv/DragSortListView;->a(II)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/fiio/music/util/dslv/DragSortListView;->d:I

    if-ge v6, v4, :cond_8

    move v3, v4

    goto/16 :goto_2

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getCount()I

    move-result v8

    move v6, v5

    move v5, v2

    move v2, v3

    move v3, v4

    :goto_b
    if-ge v2, v8, :cond_8

    add-int/lit8 v4, v8, -0x1

    if-ne v2, v4, :cond_15

    add-int v4, v6, v7

    add-int/2addr v4, v5

    goto/16 :goto_3

    :cond_15
    add-int v4, v7, v5

    add-int/2addr v6, v4

    add-int/lit8 v4, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/fiio/music/util/dslv/DragSortListView;->b(I)I

    move-result v5

    add-int/lit8 v4, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/fiio/music/util/dslv/DragSortListView;->a(II)I

    move-result v4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/fiio/music/util/dslv/DragSortListView;->d:I

    if-lt v11, v4, :cond_8

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_b

    :cond_16
    move/from16 v16, v3

    move v3, v4

    move/from16 v4, v16

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->d:I

    if-lt v3, v13, :cond_18

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fiio/music/util/dslv/DragSortListView;->d:I

    sub-int/2addr v4, v15

    int-to-float v4, v4

    div-float/2addr v4, v14

    add-float/2addr v4, v13

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->ab:F

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v7

    if-lt v3, v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    goto/16 :goto_6

    .line 2330
    :cond_1a
    move/from16 v0, p1

    if-ne v0, v10, :cond_1d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    move/from16 v0, p1

    if-gt v0, v4, :cond_1b

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x0

    goto/16 :goto_a

    :cond_1b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_1c

    sub-int v2, v3, v5

    add-int/lit8 v2, v2, 0x0

    goto/16 :goto_a

    :cond_1c
    add-int/lit8 v2, v2, 0x0

    goto/16 :goto_a

    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    move/from16 v0, p1

    if-gt v0, v2, :cond_1e

    rsub-int/lit8 v2, v7, 0x0

    goto/16 :goto_a

    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_1f

    rsub-int/lit8 v2, v4, 0x0

    goto/16 :goto_a

    :cond_1f
    move v2, v6

    goto/16 :goto_a

    :cond_20
    move v2, v3

    move v4, v5

    goto/16 :goto_9

    :cond_21
    move v8, v3

    goto/16 :goto_8

    :cond_22
    move v3, v6

    goto/16 :goto_7
.end method

.method static synthetic c(Lcom/fiio/music/util/dslv/DragSortListView;ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 2318
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->c(ILandroid/view/View;Z)V

    return-void
.end method

.method private d(I)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1925
    iget v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    if-ne p1, v1, :cond_1

    .line 1971
    :cond_0
    :goto_0
    return v0

    .line 1929
    :cond_1
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1931
    if-eqz v1, :cond_2

    .line 1934
    invoke-direct {p0, p1, v1, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    goto :goto_0

    .line 1938
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ah:Lcom/fiio/music/util/dslv/o;

    invoke-virtual {v0, p1}, Lcom/fiio/music/util/dslv/o;->a(I)I

    move-result v0

    .line 1939
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1944
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1945
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 1948
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    .line 1949
    iget-object v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->A:[Landroid/view/View;

    array-length v3, v3

    if-eq v2, v3, :cond_3

    .line 1950
    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->A:[Landroid/view/View;

    .line 1953
    :cond_3
    if-ltz v1, :cond_5

    .line 1954
    iget-object v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->A:[Landroid/view/View;

    aget-object v2, v2, v1

    if-nez v2, :cond_4

    .line 1955
    invoke-interface {v0, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1956
    iget-object v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->A:[Landroid/view/View;

    aput-object v0, v2, v1

    .line 1966
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/fiio/music/util/dslv/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    .line 1969
    iget-object v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ah:Lcom/fiio/music/util/dslv/o;

    invoke-virtual {v1, p1, v0}, Lcom/fiio/music/util/dslv/o;->a(II)V

    goto :goto_0

    .line 1958
    :cond_4
    iget-object v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->A:[Landroid/view/View;

    aget-object v1, v2, v1

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1962
    :cond_5
    invoke-interface {v0, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/fiio/music/util/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    return v0
.end method

.method static synthetic d(Lcom/fiio/music/util/dslv/DragSortListView;I)I
    .locals 1

    .prologue
    .line 1924
    invoke-direct {p0, p1}, Lcom/fiio/music/util/dslv/DragSortListView;->d(I)I

    move-result v0

    return v0
.end method

.method private d()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1490
    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    .line 1491
    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    .line 1492
    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    .line 1493
    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->i:I

    .line 1494
    return-void
.end method

.method static synthetic e(Lcom/fiio/music/util/dslv/DragSortListView;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 1499
    const/4 v0, 0x2

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    .line 1501
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->s:Lcom/fiio/music/util/dslv/m;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->i:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->i:I

    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1502
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1503
    iget-object v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->s:Lcom/fiio/music/util/dslv/m;

    iget v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->i:I

    sub-int v0, v3, v0

    invoke-interface {v1, v2, v0}, Lcom/fiio/music/util/dslv/m;->drop(II)V

    .line 1506
    :cond_0
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->l()V

    .line 1508
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->f()V

    .line 1509
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->d()V

    .line 1510
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->i()V

    .line 1513
    iget-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->T:Z

    if-eqz v0, :cond_1

    .line 1514
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    .line 1518
    :goto_0
    return-void

    .line 1516
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    goto :goto_0
.end method

.method static synthetic f(Lcom/fiio/music/util/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->N:I

    return v0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1551
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1553
    iget v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    if-ge v2, v1, :cond_1

    .line 1556
    invoke-virtual {p0, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1558
    if-eqz v2, :cond_0

    .line 1559
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1562
    :cond_0
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 1564
    :cond_1
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1666
    iput v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->W:I

    .line 1667
    iput-boolean v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->T:Z

    .line 1668
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1669
    iput v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    .line 1671
    :cond_0
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->g:F

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->h:F

    .line 1672
    iput-boolean v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->an:Z

    .line 1673
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ah:Lcom/fiio/music/util/dslv/o;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/o;->a()V

    .line 1674
    return-void
.end method

.method static synthetic g(Lcom/fiio/music/util/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 2307
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->k()V

    return-void
.end method

.method static synthetic h(Lcom/fiio/music/util/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->i:I

    return v0
.end method

.method private h()V
    .locals 6

    .prologue
    .line 1838
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getPaddingTop()I

    move-result v0

    .line 1839
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1840
    int-to-float v2, v1

    .line 1842
    int-to-float v3, v0

    iget v4, p0, Lcom/fiio/music/util/dslv/DragSortListView;->C:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->H:F

    .line 1843
    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/fiio/music/util/dslv/DragSortListView;->D:F

    sub-float/2addr v4, v5

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->G:F

    .line 1845
    iget v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->H:F

    float-to-int v2, v2

    iput v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->E:I

    .line 1846
    iget v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->G:F

    float-to-int v2, v2

    iput v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->F:I

    .line 1848
    iget v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->H:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->I:F

    .line 1849
    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->G:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->J:F

    .line 1850
    return-void
.end method

.method static synthetic i(Lcom/fiio/music/util/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    return v0
.end method

.method private i()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1859
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1860
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v2

    .line 1862
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1863
    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1865
    :goto_0
    if-le v0, v2, :cond_0

    .line 1871
    return-void

    .line 1866
    :cond_0
    invoke-virtual {p0, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1867
    if-eqz v3, :cond_1

    .line 1868
    add-int v4, v1, v0

    invoke-direct {p0, v4, v3, v5}, Lcom/fiio/music/util/dslv/DragSortListView;->a(ILandroid/view/View;Z)V

    .line 1865
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic j(Lcom/fiio/music/util/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->w:I

    return v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2117
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->a(Landroid/view/View;)V

    .line 2118
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->x:I

    .line 2119
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->x:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->y:I

    .line 2121
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/fiio/music/util/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->x:I

    return v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 2308
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 2309
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2311
    if-nez v1, :cond_0

    .line 2316
    :goto_0
    return-void

    .line 2315
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/fiio/music/util/dslv/DragSortListView;->c(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2411
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2412
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->U:Lcom/fiio/music/util/dslv/n;

    if-eqz v0, :cond_0

    .line 2413
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->U:Lcom/fiio/music/util/dslv/n;

    iget-object v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/fiio/music/util/dslv/n;->a(Landroid/view/View;)V

    .line 2415
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    .line 2416
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->invalidate()V

    .line 2418
    :cond_1
    return-void
.end method

.method static synthetic l(Lcom/fiio/music/util/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 1496
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->e()V

    return-void
.end method

.method static synthetic m(Lcom/fiio/music/util/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    return v0
.end method

.method static synthetic n(Lcom/fiio/music/util/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    return v0
.end method

.method static synthetic o(Lcom/fiio/music/util/dslv/DragSortListView;)Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->al:Z

    return v0
.end method

.method static synthetic p(Lcom/fiio/music/util/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->am:F

    return v0
.end method

.method static synthetic q(Lcom/fiio/music/util/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 2409
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->l()V

    return-void
.end method

.method static synthetic r(Lcom/fiio/music/util/dslv/DragSortListView;)V
    .locals 2

    .prologue
    .line 1520
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->c(I)V

    return-void
.end method

.method static synthetic s(Lcom/fiio/music/util/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->d:I

    return v0
.end method

.method static synthetic t(Lcom/fiio/music/util/dslv/DragSortListView;)Lcom/fiio/music/util/dslv/h;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->L:Lcom/fiio/music/util/dslv/h;

    return-object v0
.end method

.method static synthetic u(Lcom/fiio/music/util/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->H:F

    return v0
.end method

.method static synthetic v(Lcom/fiio/music/util/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->I:F

    return v0
.end method

.method static synthetic w(Lcom/fiio/music/util/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->G:F

    return v0
.end method

.method static synthetic x(Lcom/fiio/music/util/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->J:F

    return v0
.end method

.method static synthetic y(Lcom/fiio/music/util/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->P:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1475
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->B:Lcom/fiio/music/util/dslv/i;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/i;->c()V

    .line 1477
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->l()V

    .line 1478
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->d()V

    .line 1479
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->i()V

    .line 1481
    iget-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->T:Z

    if-eqz v0, :cond_1

    .line 1482
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    .line 1487
    :cond_0
    :goto_0
    return-void

    .line 1484
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 1404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->al:Z

    .line 1405
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->a(IF)V

    .line 1406
    return-void
.end method

.method public final a(F)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1584
    iput-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->al:Z

    .line 1585
    invoke-direct {p0, v0, p1}, Lcom/fiio/music/util/dslv/DragSortListView;->a(ZF)Z

    move-result v0

    return v0
.end method

.method public final a(IIII)Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2208
    iget-boolean v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->T:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->U:Lcom/fiio/music/util/dslv/n;

    if-nez v2, :cond_1

    .line 2217
    :cond_0
    :goto_0
    return v0

    .line 2212
    :cond_1
    iget-object v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->U:Lcom/fiio/music/util/dslv/n;

    invoke-interface {v2, p1}, Lcom/fiio/music/util/dslv/n;->a(I)Landroid/view/View;

    move-result-object v2

    .line 2214
    if-eqz v2, :cond_0

    .line 2217
    iget v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->T:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->u:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v3, p1

    iput v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    iput v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    iput v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    iput v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->i:I

    iput v4, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->R:I

    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->R:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->R:I

    iput-object v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->j()V

    iput p3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->n:I

    iput p4, p0, Lcom/fiio/music/util/dslv/DragSortListView;->o:I

    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->N:I

    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->Q:I

    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->M:I

    iget v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->n:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->N:I

    iget v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->o:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ad:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ae:Lcom/fiio/music/util/dslv/k;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/k;->a()V

    :cond_4
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->W:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->requestLayout()V

    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->aj:Lcom/fiio/music/util/dslv/p;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->aj:Lcom/fiio/music/util/dslv/p;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/p;->c()V

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 1693
    iget-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->an:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 2496
    iget-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->u:Z

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 790
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 792
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    if-eqz v0, :cond_1

    .line 794
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    iget v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    if-eq v0, v2, :cond_0

    .line 795
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    invoke-direct {p0, v0, p1}, Lcom/fiio/music/util/dslv/DragSortListView;->a(ILandroid/graphics/Canvas;)V

    .line 797
    :cond_0
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    iget v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->j:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    iget v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->m:I

    if-eq v0, v2, :cond_1

    .line 798
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->k:I

    invoke-direct {p0, v0, p1}, Lcom/fiio/music/util/dslv/DragSortListView;->a(ILandroid/graphics/Canvas;)V

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 804
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 805
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 807
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 809
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getWidth()I

    move-result v3

    .line 810
    if-gez v0, :cond_2

    .line 811
    neg-int v0, v0

    .line 813
    :cond_2
    if-ge v0, v3, :cond_4

    .line 814
    sub-int v0, v3, v0

    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 815
    mul-float/2addr v0, v0

    .line 820
    :goto_0
    const/high16 v3, 0x437f0000    # 255.0f

    iget v5, p0, Lcom/fiio/music/util/dslv/DragSortListView;->h:F

    mul-float/2addr v3, v5

    mul-float/2addr v0, v3

    float-to-int v5, v0

    .line 822
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 824
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 825
    invoke-virtual {p1, v6, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 828
    int-to-float v3, v2

    int-to-float v4, v4

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 829
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 830
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 831
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 833
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 817
    goto :goto_0
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->h:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ac:Lcom/fiio/music/util/dslv/e;

    if-nez v0, :cond_0

    .line 637
    const/4 v0, 0x0

    .line 639
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ac:Lcom/fiio/music/util/dslv/e;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/e;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2138
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2140
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2141
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->e:Z

    if-nez v0, :cond_0

    .line 2145
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->j()V

    .line 2147
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2148
    iput-boolean v3, p0, Lcom/fiio/music/util/dslv/DragSortListView;->e:Z

    .line 2150
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 1126
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1128
    iget-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ad:Z

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ae:Lcom/fiio/music/util/dslv/k;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/k;->b()V

    .line 1131
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1700
    iget-boolean v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->u:Z

    if-nez v1, :cond_0

    .line 1701
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1748
    :goto_0
    return v0

    .line 1704
    :cond_0
    invoke-direct {p0, p1}, Lcom/fiio/music/util/dslv/DragSortListView;->a(Landroid/view/MotionEvent;)V

    .line 1705
    iput-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->S:Z

    .line 1707
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v3, v1, 0xff

    .line 1709
    if-nez v3, :cond_2

    .line 1710
    iget v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    if-eqz v1, :cond_1

    .line 1712
    iput-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ag:Z

    goto :goto_0

    .line 1715
    :cond_1
    iput-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->T:Z

    .line 1721
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v1, :cond_5

    move v1, v0

    .line 1744
    :goto_1
    if-eq v3, v0, :cond_3

    const/4 v0, 0x3

    if-ne v3, v0, :cond_4

    .line 1745
    :cond_3
    iput-boolean v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->T:Z

    :cond_4
    move v0, v1

    .line 1748
    goto :goto_0

    .line 1725
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1726
    iput-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->an:Z

    move v1, v0

    .line 1730
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 1736
    :pswitch_0
    if-eqz v1, :cond_6

    .line 1737
    iput v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->W:I

    goto :goto_1

    .line 1733
    :pswitch_1
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->g()V

    goto :goto_1

    .line 1739
    :cond_6
    const/4 v4, 0x2

    iput v4, p0, Lcom/fiio/music/util/dslv/DragSortListView;->W:I

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2

    .line 1730
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 2125
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2127
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2128
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2129
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->j()V

    .line 2131
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->e:Z

    .line 2133
    :cond_1
    iput p1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->z:I

    .line 2134
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 1854
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1855
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->h()V

    .line 1856
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1615
    iget-boolean v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ag:Z

    if-eqz v2, :cond_1

    .line 1616
    iput-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ag:Z

    .line 1662
    :cond_0
    :goto_0
    return v0

    .line 1620
    :cond_1
    iget-boolean v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->u:Z

    if-nez v2, :cond_2

    .line 1621
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1626
    :cond_2
    iget-boolean v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->S:Z

    .line 1627
    iput-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->S:Z

    .line 1629
    if-nez v2, :cond_3

    .line 1630
    invoke-direct {p0, p1}, Lcom/fiio/music/util/dslv/DragSortListView;->a(Landroid/view/MotionEvent;)V

    .line 1634
    :cond_3
    iget v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    if-ne v2, v3, :cond_b

    .line 1635
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_4
    :goto_1
    move v0, v1

    .line 1637
    goto :goto_0

    .line 1635
    :pswitch_0
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->a()V

    :cond_5
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->g()V

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    if-ne v2, v3, :cond_6

    iput-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->al:Z

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/fiio/music/util/dslv/DragSortListView;->a(ZF)Z

    :cond_6
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->g()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/fiio/music/util/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v5, p0, Lcom/fiio/music/util/dslv/DragSortListView;->n:I

    sub-int/2addr v2, v5

    iput v2, v4, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v4, p0, Lcom/fiio/music/util/dslv/DragSortListView;->o:I

    sub-int v4, v3, v4

    iput v4, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->k()V

    iget v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->d:I

    iget v4, p0, Lcom/fiio/music/util/dslv/DragSortListView;->y:I

    add-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v4, p0, Lcom/fiio/music/util/dslv/DragSortListView;->d:I

    iget v5, p0, Lcom/fiio/music/util/dslv/DragSortListView;->y:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/fiio/music/util/dslv/DragSortListView;->B:Lcom/fiio/music/util/dslv/i;

    invoke-virtual {v4}, Lcom/fiio/music/util/dslv/i;->b()I

    move-result v4

    iget v5, p0, Lcom/fiio/music/util/dslv/DragSortListView;->P:I

    if-le v2, v5, :cond_8

    iget v5, p0, Lcom/fiio/music/util/dslv/DragSortListView;->F:I

    if-le v2, v5, :cond_8

    if-eq v4, v1, :cond_8

    if-eq v4, v6, :cond_7

    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->B:Lcom/fiio/music/util/dslv/i;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/i;->c()V

    :cond_7
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->B:Lcom/fiio/music/util/dslv/i;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/dslv/i;->a(I)V

    goto :goto_1

    :cond_8
    iget v5, p0, Lcom/fiio/music/util/dslv/DragSortListView;->P:I

    if-ge v3, v5, :cond_a

    iget v5, p0, Lcom/fiio/music/util/dslv/DragSortListView;->E:I

    if-ge v3, v5, :cond_a

    if-eqz v4, :cond_a

    if-eq v4, v6, :cond_9

    iget-object v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->B:Lcom/fiio/music/util/dslv/i;

    invoke-virtual {v2}, Lcom/fiio/music/util/dslv/i;->c()V

    :cond_9
    iget-object v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->B:Lcom/fiio/music/util/dslv/i;

    invoke-virtual {v2, v0}, Lcom/fiio/music/util/dslv/i;->a(I)V

    goto :goto_1

    :cond_a
    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->E:I

    if-lt v3, v0, :cond_4

    iget v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->F:I

    if-gt v2, v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->B:Lcom/fiio/music/util/dslv/i;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/i;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->B:Lcom/fiio/music/util/dslv/i;

    invoke-virtual {v0}, Lcom/fiio/music/util/dslv/i;->c()V

    goto/16 :goto_1

    .line 1642
    :cond_b
    iget v2, p0, Lcom/fiio/music/util/dslv/DragSortListView;->v:I

    if-nez v2, :cond_c

    .line 1643
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    .line 1648
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 1650
    packed-switch v2, :pswitch_data_1

    .line 1656
    :pswitch_3
    if-eqz v0, :cond_0

    .line 1657
    iput v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->W:I

    goto/16 :goto_0

    .line 1653
    :pswitch_4
    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->g()V

    goto/16 :goto_0

    .line 1635
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 1650
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2050
    iget-boolean v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->af:Z

    if-nez v0, :cond_0

    .line 2051
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 2053
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 608
    if-eqz p1, :cond_3

    .line 609
    new-instance v0, Lcom/fiio/music/util/dslv/e;

    invoke-direct {v0, p0, p1}, Lcom/fiio/music/util/dslv/e;-><init>(Lcom/fiio/music/util/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ac:Lcom/fiio/music/util/dslv/e;

    .line 610
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->f:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 612
    instance-of v0, p1, Lcom/fiio/music/util/dslv/m;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 613
    check-cast v0, Lcom/fiio/music/util/dslv/m;

    invoke-virtual {p0, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->setDropListener(Lcom/fiio/music/util/dslv/m;)V

    .line 615
    :cond_0
    instance-of v0, p1, Lcom/fiio/music/util/dslv/g;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 616
    check-cast v0, Lcom/fiio/music/util/dslv/g;

    invoke-virtual {p0, v0}, Lcom/fiio/music/util/dslv/DragSortListView;->setDragListener(Lcom/fiio/music/util/dslv/g;)V

    .line 618
    :cond_1
    instance-of v0, p1, Lcom/fiio/music/util/dslv/r;

    if-eqz v0, :cond_2

    .line 619
    check-cast p1, Lcom/fiio/music/util/dslv/r;

    invoke-virtual {p0, p1}, Lcom/fiio/music/util/dslv/DragSortListView;->setRemoveListener(Lcom/fiio/music/util/dslv/r;)V

    .line 625
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ac:Lcom/fiio/music/util/dslv/e;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 626
    return-void

    .line 622
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/util/dslv/DragSortListView;->ac:Lcom/fiio/music/util/dslv/e;

    goto :goto_0
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .prologue
    .line 2492
    iput-boolean p1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->u:Z

    .line 2493
    return-void
.end method

.method public setDragListener(Lcom/fiio/music/util/dslv/g;)V
    .locals 0

    .prologue
    .line 2478
    iput-object p1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->r:Lcom/fiio/music/util/dslv/g;

    .line 2479
    return-void
.end method

.method public setDragScrollProfile(Lcom/fiio/music/util/dslv/h;)V
    .locals 0

    .prologue
    .line 2575
    if-eqz p1, :cond_0

    .line 2576
    iput-object p1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->L:Lcom/fiio/music/util/dslv/h;

    .line 2578
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1760
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    iput v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->D:F

    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    iput v1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->C:F

    :goto_1
    invoke-virtual {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/fiio/music/util/dslv/DragSortListView;->h()V

    .line 1761
    :cond_0
    return-void

    .line 1760
    :cond_1
    iput p1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->D:F

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->C:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcom/fiio/music/util/dslv/j;)V
    .locals 0

    .prologue
    .line 2562
    invoke-virtual {p0, p1}, Lcom/fiio/music/util/dslv/DragSortListView;->setDropListener(Lcom/fiio/music/util/dslv/m;)V

    .line 2563
    invoke-virtual {p0, p1}, Lcom/fiio/music/util/dslv/DragSortListView;->setDragListener(Lcom/fiio/music/util/dslv/g;)V

    .line 2564
    invoke-virtual {p0, p1}, Lcom/fiio/music/util/dslv/DragSortListView;->setRemoveListener(Lcom/fiio/music/util/dslv/r;)V

    .line 2565
    return-void
.end method

.method public setDropListener(Lcom/fiio/music/util/dslv/m;)V
    .locals 0

    .prologue
    .line 2512
    iput-object p1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->s:Lcom/fiio/music/util/dslv/m;

    .line 2513
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0

    .prologue
    .line 579
    iput p1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->h:F

    .line 580
    return-void
.end method

.method public setFloatViewManager(Lcom/fiio/music/util/dslv/n;)V
    .locals 0

    .prologue
    .line 2474
    iput-object p1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->U:Lcom/fiio/music/util/dslv/n;

    .line 2475
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0

    .prologue
    .line 593
    iput p1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->K:F

    .line 594
    return-void
.end method

.method public setRemoveListener(Lcom/fiio/music/util/dslv/r;)V
    .locals 0

    .prologue
    .line 2526
    iput-object p1, p0, Lcom/fiio/music/util/dslv/DragSortListView;->t:Lcom/fiio/music/util/dslv/r;

    .line 2527
    return-void
.end method
