.class public Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;
.super Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;
.source "UDA10ServiceDescriptorBinderSAXImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler",
        "<",
        "Lorg/fourthline/cling/binding/staging/MutableStateVariable;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT:[I

.field public static final EL:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;


# direct methods
.method static synthetic $SWITCH_TABLE$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT()[I
    .locals 3

    .prologue
    .line 293
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->$SWITCH_TABLE$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->values()[Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->action:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_15

    :goto_1
    :try_start_1
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->actionList:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_14

    :goto_2
    :try_start_2
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValue:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_13

    :goto_3
    :try_start_3
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueList:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_12

    :goto_4
    :try_start_4
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueRange:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_11

    :goto_5
    :try_start_5
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->argument:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_10

    :goto_6
    :try_start_6
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->argumentList:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_f

    :goto_7
    :try_start_7
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->dataType:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_e

    :goto_8
    :try_start_8
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->defaultValue:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_d

    :goto_9
    :try_start_9
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->direction:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_c

    :goto_a
    :try_start_a
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->major:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_b

    :goto_b
    :try_start_b
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->maximum:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_a

    :goto_c
    :try_start_c
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->minimum:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_9

    :goto_d
    :try_start_d
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->minor:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_8

    :goto_e
    :try_start_e
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_7

    :goto_f
    :try_start_f
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->relatedStateVariable:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_6

    :goto_10
    :try_start_10
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->retval:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_5

    :goto_11
    :try_start_11
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->scpd:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_4

    :goto_12
    :try_start_12
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->serviceStateTable:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_3

    :goto_13
    :try_start_13
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->specVersion:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_2

    :goto_14
    :try_start_14
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->stateVariable:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_1

    :goto_15
    :try_start_15
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->step:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_0

    :goto_16
    sput-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->$SWITCH_TABLE$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_16

    :catch_1
    move-exception v1

    goto :goto_15

    :catch_2
    move-exception v1

    goto :goto_14

    :catch_3
    move-exception v1

    goto :goto_13

    :catch_4
    move-exception v1

    goto :goto_12

    :catch_5
    move-exception v1

    goto :goto_11

    :catch_6
    move-exception v1

    goto :goto_10

    :catch_7
    move-exception v1

    goto :goto_f

    :catch_8
    move-exception v1

    goto :goto_e

    :catch_9
    move-exception v1

    goto :goto_d

    :catch_a
    move-exception v1

    goto :goto_c

    :catch_b
    move-exception v1

    goto/16 :goto_b

    :catch_c
    move-exception v1

    goto/16 :goto_a

    :catch_d
    move-exception v1

    goto/16 :goto_9

    :catch_e
    move-exception v1

    goto/16 :goto_8

    :catch_f
    move-exception v1

    goto/16 :goto_7

    :catch_10
    move-exception v1

    goto/16 :goto_6

    :catch_11
    move-exception v1

    goto/16 :goto_5

    :catch_12
    move-exception v1

    goto/16 :goto_4

    :catch_13
    move-exception v1

    goto/16 :goto_3

    :catch_14
    move-exception v1

    goto/16 :goto_2

    :catch_15
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->stateVariable:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    sput-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/binding/staging/MutableStateVariable;Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;-><init>(Ljava/lang/Object;Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V

    .line 299
    return-void
.end method


# virtual methods
.method public endElement(Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;)V
    .locals 3

    .prologue
    .line 318
    invoke-static {}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->$SWITCH_TABLE$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT()[I

    move-result-object v0

    invoke-virtual {p1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 331
    :goto_0
    return-void

    .line 320
    :sswitch_0
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->getCharacters()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->name:Ljava/lang/String;

    goto :goto_0

    .line 323
    :sswitch_1
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-static {v2}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getByDescriptorName(Ljava/lang/String;)Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v1

    .line 325
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->dataType:Lorg/fourthline/cling/model/types/Datatype;

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/fourthline/cling/model/types/CustomDatatype;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/types/CustomDatatype;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 328
    :sswitch_2
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->getCharacters()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->defaultValue:Ljava/lang/String;

    goto :goto_0

    .line 318
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xf -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public isLastElement(Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;)Z
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public startElement(Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 303
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueListHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 305
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;

    iput-object v1, v0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->allowedValues:Ljava/util/List;

    .line 306
    new-instance v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueListHandler;

    invoke-direct {v0, v1, p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueListHandler;-><init>(Ljava/util/List;Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V

    .line 309
    :cond_0
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueRangeHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    new-instance v1, Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;

    invoke-direct {v1}, Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;-><init>()V

    .line 311
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;

    iput-object v1, v0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->allowedValueRange:Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;

    .line 312
    new-instance v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueRangeHandler;

    invoke-direct {v0, v1, p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueRangeHandler;-><init>(Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V

    .line 314
    :cond_1
    return-void
.end method
