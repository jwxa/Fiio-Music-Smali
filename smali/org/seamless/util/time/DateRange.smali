.class public Lorg/seamless/util/time/DateRange;
.super Ljava/lang/Object;
.source "DateRange.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected end:Ljava/util/Date;

.field protected start:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/seamless/util/time/DateRange;->start:Ljava/util/Date;

    .line 64
    :cond_0
    if-eqz p2, :cond_1

    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/seamless/util/time/DateRange;->end:Ljava/util/Date;

    .line 67
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/seamless/util/time/DateRange;->start:Ljava/util/Date;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/seamless/util/time/DateRange;->start:Ljava/util/Date;

    .line 57
    iput-object p2, p0, Lorg/seamless/util/time/DateRange;->end:Ljava/util/Date;

    .line 58
    return-void
.end method

.method public static getCurrentDayOfMonth()I
    .locals 1

    .prologue
    .line 97
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    return v0
.end method

.method public static getCurrentMonth()I
    .locals 1

    .prologue
    .line 93
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    return v0
.end method

.method public static getCurrentYear()I
    .locals 1

    .prologue
    .line 89
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    return v0
.end method

.method public static getDaysInMonth(Ljava/util/Date;)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x1e

    const/16 v5, 0x1f

    .line 105
    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v3

    .line 106
    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    .line 107
    rem-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_1

    rem-int/lit8 v4, v0, 0x64

    if-nez v4, :cond_0

    rem-int/lit16 v0, v0, 0x190

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 108
    :goto_0
    const/16 v4, 0xc

    new-array v4, v4, [I

    aput v5, v4, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    :goto_1
    aput v0, v4, v1

    const/4 v0, 0x2

    aput v5, v4, v0

    const/4 v0, 0x3

    aput v6, v4, v0

    const/4 v0, 0x4

    aput v5, v4, v0

    const/4 v0, 0x5

    aput v6, v4, v0

    const/4 v0, 0x6

    aput v5, v4, v0

    const/4 v0, 0x7

    aput v5, v4, v0

    const/16 v0, 0x8

    aput v6, v4, v0

    const/16 v0, 0x9

    aput v5, v4, v0

    const/16 v0, 0xa

    aput v6, v4, v0

    const/16 v0, 0xb

    aput v5, v4, v0

    .line 109
    aget v0, v4, v3

    return v0

    :cond_1
    move v0, v2

    .line 107
    goto :goto_0

    .line 108
    :cond_2
    const/16 v0, 0x1c

    goto :goto_1
.end method

.method public static getMonthOf(Ljava/util/Date;)Lorg/seamless/util/time/DateRange;
    .locals 6

    .prologue
    .line 113
    new-instance v0, Lorg/seamless/util/time/DateRange;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Date;-><init>(III)V

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v3

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-static {p0}, Lorg/seamless/util/time/DateRange;->getDaysInMonth(Ljava/util/Date;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Date;-><init>(III)V

    invoke-direct {v0, v1, v2}, Lorg/seamless/util/time/DateRange;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/seamless/util/time/DateRange;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 149
    const-string v1, "dr="

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-object v0

    .line 150
    :cond_1
    const-string v1, "dr="

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 152
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 153
    array-length v1, v4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 155
    :try_start_0
    new-instance v1, Lorg/seamless/util/time/DateRange;

    const/4 v2, 0x0

    aget-object v2, v4, v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/Date;

    const/4 v3, 0x0

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object v3, v2

    :goto_1
    const/4 v2, 0x1

    aget-object v2, v4, v2

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/Date;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    :goto_2
    invoke-direct {v1, v3, v2}, Lorg/seamless/util/time/DateRange;-><init>(Ljava/util/Date;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v3, v0

    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_2

    .line 160
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    if-ne p0, p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 133
    :cond_3
    check-cast p1, Lorg/seamless/util/time/DateRange;

    .line 135
    iget-object v2, p0, Lorg/seamless/util/time/DateRange;->end:Ljava/util/Date;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/seamless/util/time/DateRange;->end:Ljava/util/Date;

    iget-object v3, p1, Lorg/seamless/util/time/DateRange;->end:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lorg/seamless/util/time/DateRange;->end:Ljava/util/Date;

    if-nez v2, :cond_4

    .line 136
    :cond_6
    iget-object v2, p0, Lorg/seamless/util/time/DateRange;->start:Ljava/util/Date;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/seamless/util/time/DateRange;->start:Ljava/util/Date;

    iget-object v3, p1, Lorg/seamless/util/time/DateRange;->start:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lorg/seamless/util/time/DateRange;->start:Ljava/util/Date;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getEnd()Ljava/util/Date;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/seamless/util/time/DateRange;->end:Ljava/util/Date;

    return-object v0
.end method

.method public getOneDayBeforeStart()Ljava/util/Date;
    .locals 6

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/seamless/util/time/DateRange;->getStart()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get day before start date because start date is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/seamless/util/time/DateRange;->getStart()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getStart()Ljava/util/Date;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/seamless/util/time/DateRange;->start:Ljava/util/Date;

    return-object v0
.end method

.method public hasStartOrEnd()Z
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/seamless/util/time/DateRange;->getStart()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/seamless/util/time/DateRange;->getEnd()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lorg/seamless/util/time/DateRange;->start:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/seamless/util/time/DateRange;->start:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    .line 144
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/seamless/util/time/DateRange;->end:Ljava/util/Date;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/seamless/util/time/DateRange;->end:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 145
    return v0

    :cond_1
    move v0, v1

    .line 143
    goto :goto_0
.end method

.method public isInRange(Ljava/util/Date;)Z
    .locals 4

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/seamless/util/time/DateRange;->getStart()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/seamless/util/time/DateRange;->getStart()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lorg/seamless/util/time/DateRange;->getEnd()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/seamless/util/time/DateRange;->getEnd()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartAfter(Ljava/util/Date;)Z
    .locals 4

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/seamless/util/time/DateRange;->getStart()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/seamless/util/time/DateRange;->getStart()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/seamless/util/time/DateRange;->getStart()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/seamless/util/time/DateRange;->getEnd()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/seamless/util/time/DateRange;->getStart()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/seamless/util/time/DateRange;->getEnd()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    const-string v0, "dr="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p0}, Lorg/seamless/util/time/DateRange;->getStart()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/seamless/util/time/DateRange;->getStart()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p0}, Lorg/seamless/util/time/DateRange;->getEnd()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/seamless/util/time/DateRange;->getEnd()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 170
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method
