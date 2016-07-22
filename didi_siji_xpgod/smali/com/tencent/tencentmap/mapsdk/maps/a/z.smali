.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/z;
.super Ljava/lang/Object;
.source "JceDisplayer.java"


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;I)V
    .locals 1
    .parameter "sb"
    .parameter "level"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->b:I

    .line 28
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    .line 29
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->b:I

    .line 30
    return-void
.end method

.method private a(CLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;
    .locals 2
    .parameter "n"
    .parameter "fieldName"

    .prologue
    .line 71
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    return-object p0
.end method

.method private a(DLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;
    .locals 2
    .parameter "n"
    .parameter "fieldName"

    .prologue
    .line 151
    invoke-direct {p0, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    return-object p0
.end method

.method private a(FLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;
    .locals 2
    .parameter "n"
    .parameter "fieldName"

    .prologue
    .line 135
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    return-object p0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;
    .locals 7
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/z;"
        }
    .end annotation

    .prologue
    .local p1, o:Ljava/lang/Object;,"TT;"
    const/16 v6, 0x5d

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 613
    if-nez p1, :cond_0

    .line 614
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .end local p1           #o:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object p0

    .line 615
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_0
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_1

    .line 616
    check-cast p1, Ljava/lang/Byte;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(BLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto :goto_0

    .line 617
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_1
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 618
    check-cast p1, Ljava/lang/Boolean;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const/16 v0, 0x54

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v0, 0x46

    goto :goto_1

    .line 619
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_3
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_4

    .line 620
    check-cast p1, Ljava/lang/Short;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(SLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto :goto_0

    .line 621
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_4
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 622
    check-cast p1, Ljava/lang/Integer;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(ILjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto :goto_0

    .line 623
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_5
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 624
    check-cast p1, Ljava/lang/Long;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(JLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto :goto_0

    .line 625
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_6
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 626
    check-cast p1, Ljava/lang/Float;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(FLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto :goto_0

    .line 627
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_7
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_8

    .line 628
    check-cast p1, Ljava/lang/Double;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(DLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto :goto_0

    .line 629
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_8
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 630
    check-cast p1, Ljava/lang/String;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto :goto_0

    .line 631
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_9
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_d

    .line 632
    check-cast p1, Ljava/util/Map;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_a

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_a
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", {}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;-><init>(Ljava/lang/StringBuilder;I)V

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->b:I

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;-><init>(Ljava/lang/StringBuilder;I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/16 v4, 0x28

    invoke-direct {v1, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(CLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v0, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    const/16 v0, 0x29

    invoke-direct {v1, v0, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(CLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto :goto_2

    :cond_c
    const/16 v0, 0x7d

    invoke-direct {p0, v0, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(CLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto/16 :goto_0

    .line 633
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_d
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_e

    .line 634
    check-cast p1, Ljava/util/List;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/util/Collection;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto/16 :goto_0

    .line 635
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_e
    instance-of v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;

    if-eqz v1, :cond_f

    .line 636
    check-cast p1, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ad;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto/16 :goto_0

    .line 637
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_f
    instance-of v1, p1, [B

    if-eqz v1, :cond_10

    .line 638
    check-cast p1, [B

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a([BLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto/16 :goto_0

    .line 639
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_10
    instance-of v1, p1, [Z

    if-eqz v1, :cond_11

    .line 640
    check-cast p1, [Z

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto/16 :goto_0

    .line 641
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_11
    instance-of v1, p1, [S

    if-eqz v1, :cond_15

    .line 642
    check-cast p1, [S

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_12

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_12
    array-length v1, p1

    if-nez v1, :cond_13

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_13
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v2, p1

    :goto_3
    if-ge v0, v2, :cond_14

    aget-short v3, p1, v0

    invoke-virtual {v1, v3, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(SLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_14
    invoke-direct {p0, v6, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(CLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto/16 :goto_0

    .line 643
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_15
    instance-of v1, p1, [I

    if-eqz v1, :cond_19

    .line 644
    check-cast p1, [I

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_16

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_16
    array-length v1, p1

    if-nez v1, :cond_17

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_17
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v2, p1

    :goto_4
    if-ge v0, v2, :cond_18

    aget v3, p1, v0

    invoke-virtual {v1, v3, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(ILjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_18
    invoke-direct {p0, v6, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(CLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto/16 :goto_0

    .line 645
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_19
    instance-of v1, p1, [J

    if-eqz v1, :cond_1d

    .line 646
    check-cast p1, [J

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_1a

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1a
    array-length v1, p1

    if-nez v1, :cond_1b

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1b
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v2, p1

    :goto_5
    if-ge v0, v2, :cond_1c

    aget-wide v3, p1, v0

    invoke-virtual {v1, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(JLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1c
    invoke-direct {p0, v6, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(CLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto/16 :goto_0

    .line 647
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_1d
    instance-of v1, p1, [F

    if-eqz v1, :cond_21

    .line 648
    check-cast p1, [F

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_1e

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1e
    array-length v1, p1

    if-nez v1, :cond_1f

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1f
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v2, p1

    :goto_6
    if-ge v0, v2, :cond_20

    aget v3, p1, v0

    invoke-direct {v1, v3, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(FLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_20
    invoke-direct {p0, v6, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(CLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto/16 :goto_0

    .line 649
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_21
    instance-of v1, p1, [D

    if-eqz v1, :cond_25

    .line 650
    check-cast p1, [D

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_22

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_22
    array-length v1, p1

    if-nez v1, :cond_23

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_23
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v2, p1

    :goto_7
    if-ge v0, v2, :cond_24

    aget-wide v3, p1, v0

    invoke-direct {v1, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(DLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_24
    invoke-direct {p0, v6, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(CLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto/16 :goto_0

    .line 651
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 652
    check-cast p1, [Ljava/lang/Object;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto/16 :goto_0

    .line 654
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_26
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/aa;

    const-string v1, "write object error: unsupport type."

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/aa;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;
    .locals 8
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/z;"
        }
    .end annotation

    .prologue
    .local p1, v:[Ljava/lang/Object;,"[TT;"
    const/4 v7, 0x0

    .line 542
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;)V

    .line 543
    if-nez p1, :cond_0

    .line 544
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    const-string v6, "null\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :goto_0
    return-object p0

    .line 547
    :cond_0
    array-length v5, p1

    if-nez v5, :cond_1

    .line 548
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", []\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 551
    :cond_1
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", [\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->b:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v2, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 553
    .local v2, jd:Lcom/tencent/tencentmap/mapsdk/maps/a/z;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, p1

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 554
    .local v4, o:Ljava/lang/Object;,"TT;"
    invoke-direct {v2, v4, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 553
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 555
    .end local v4           #o:Ljava/lang/Object;,"TT;"
    :cond_2
    const/16 v5, 0x5d

    invoke-direct {p0, v5, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(CLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter "fieldName"

    .prologue
    .line 20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->b:I

    if-ge v0, v1, :cond_0

    .line 21
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_0
    if-eqz p1, :cond_1

    .line 23
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(BLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;
    .locals 2
    .parameter "n"
    .parameter "fieldName"

    .prologue
    .line 55
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    return-object p0
.end method

.method public final a(ILjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;
    .locals 2
    .parameter "n"
    .parameter "fieldName"

    .prologue
    .line 103
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    return-object p0
.end method

.method public final a(JLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;
    .locals 2
    .parameter "n"
    .parameter "fieldName"

    .prologue
    .line 119
    invoke-direct {p0, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    return-object p0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ad;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;
    .locals 2
    .parameter "v"
    .parameter "fieldName"

    .prologue
    .line 711
    const/16 v0, 0x7b

    invoke-direct {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(CLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 712
    if-nez p1, :cond_0

    .line 713
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    :goto_0
    const/16 v0, 0x7d

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(CLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 719
    return-object p0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;->a(Ljava/lang/StringBuilder;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;
    .locals 2
    .parameter "s"
    .parameter "fieldName"

    .prologue
    .line 167
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;)V

    .line 168
    if-nez p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :goto_0
    return-object p0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final a(Ljava/util/Collection;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;
    .locals 2
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/z;"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, v:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    if-nez p1, :cond_0

    .line 588
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    move-result-object p0

    goto :goto_0
.end method

.method public final a(SLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;
    .locals 2
    .parameter "n"
    .parameter "fieldName"

    .prologue
    .line 87
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    return-object p0
.end method

.method public final a([BLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;
    .locals 8
    .parameter "v"
    .parameter "fieldName"

    .prologue
    const/4 v7, 0x0

    .line 192
    invoke-direct {p0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;)V

    .line 193
    if-nez p1, :cond_0

    .line 194
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    const-string v6, "null\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :goto_0
    return-object p0

    .line 197
    :cond_0
    array-length v5, p1

    if-nez v5, :cond_1

    .line 198
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", []\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 201
    :cond_1
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", [\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a:Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->b:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v2, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 203
    .local v2, jd:Lcom/tencent/tencentmap/mapsdk/maps/a/z;
    move-object v0, p1

    .local v0, arr$:[B
    array-length v3, p1

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-byte v4, v0, v1

    .line 204
    .local v4, o:B
    invoke-virtual {v2, v4, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(BLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 205
    .end local v4           #o:B
    :cond_2
    const/16 v5, 0x5d

    invoke-direct {p0, v5, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(CLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    goto :goto_0
.end method
