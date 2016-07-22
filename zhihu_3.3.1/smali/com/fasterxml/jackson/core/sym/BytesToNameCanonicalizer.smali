.class public final Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;,
        Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;
    }
.end annotation


# static fields
.field protected static final DEFAULT_TABLE_SIZE:I = 0x40

.field static final INITIAL_COLLISION_LEN:I = 0x20

.field static final LAST_VALID_BUCKET:I = 0xfe

.field static final MAX_COLL_CHAIN_FOR_REUSE:I = 0x3f

.field static final MAX_COLL_CHAIN_LENGTH:I = 0xff

.field static final MAX_ENTRIES_FOR_REUSE:I = 0x1770

.field protected static final MAX_TABLE_SIZE:I = 0x10000

.field static final MIN_HASH_SIZE:I = 0x10

.field private static final MULT:I = 0x21

.field private static final MULT2:I = 0x1003f

.field private static final MULT3:I = 0x1f


# instance fields
.field protected _collCount:I

.field protected _collEnd:I

.field protected _collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

.field private _collListShared:Z

.field protected _count:I

.field private final _hashSeed:I

.field protected final _intern:Z

.field protected _longestCollisionList:I

.field protected _mainHash:[I

.field protected _mainHashMask:I

.field private _mainHashShared:Z

.field protected _mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

.field private _mainNamesShared:Z

.field private transient _needRehash:Z

.field protected final _parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

.field protected final _tableInfo:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(IZI)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x10

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 242
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashSeed:I

    .line 243
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_intern:Z

    .line 245
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 259
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->initTableInfo(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 260
    return-void

    .line 251
    :cond_1
    add-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 253
    :goto_1
    if-ge v0, p1, :cond_2

    .line 254
    add-int/2addr v0, v0

    goto :goto_1

    :cond_2
    move p1, v0

    .line 256
    goto :goto_0
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;ZILcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 269
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashSeed:I

    .line 270
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_intern:Z

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 274
    iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    .line 275
    iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainHashMask:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 276
    iget-object v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainHash:[I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 277
    iget-object v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 278
    iget-object v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 279
    iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collCount:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 280
    iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collEnd:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 281
    iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->longestCollisionList:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 285
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 286
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 287
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 288
    return-void
.end method

.method private _addSymbol(ILcom/fasterxml/jackson/core/sym/Name;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0xff

    const/4 v5, 0x1

    .line 791
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    if-eqz v0, :cond_0

    .line 792
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->unshareMain()V

    .line 795
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    if-eqz v0, :cond_1

    .line 796
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->rehash()V

    .line 799
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    .line 804
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v1, p1, v0

    .line 805
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    .line 806
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    shl-int/lit8 v2, p1, 0x8

    aput v2, v0, v1

    .line 807
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    if-eqz v0, :cond_2

    .line 808
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->unshareNames()V

    .line 810
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aput-object p2, v0, v1

    .line 852
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    array-length v0, v0

    .line 853
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    shr-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_4

    .line 854
    shr-int/lit8 v1, v0, 0x2

    .line 858
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    sub-int/2addr v0, v1

    if-le v2, v0, :cond_a

    .line 859
    iput-boolean v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 865
    :cond_4
    :goto_1
    return-void

    .line 815
    :cond_5
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    if-eqz v0, :cond_6

    .line 816
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->unshareCollision()V

    .line 818
    :cond_6
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 819
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v2, v0, v1

    .line 820
    and-int/lit16 v0, v2, 0xff

    .line 821
    if-nez v0, :cond_9

    .line 822
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    const/16 v3, 0xfe

    if-gt v0, v3, :cond_8

    .line 823
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 824
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 826
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    array-length v3, v3

    if-lt v0, v3, :cond_7

    .line 827
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->expandCollision()V

    .line 833
    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    and-int/lit16 v2, v2, -0x100

    add-int/lit8 v4, v0, 0x1

    or-int/2addr v2, v4

    aput v2, v3, v1

    .line 839
    :goto_3
    new-instance v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v2, v2, v0

    invoke-direct {v1, p2, v2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lcom/fasterxml/jackson/core/sym/Name;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)V

    .line 840
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aput-object v1, v2, v0

    .line 842
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    .line 843
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    if-le v0, v6, :cond_3

    .line 844
    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->reportTooManyCollisions(I)V

    goto :goto_0

    .line 830
    :cond_8
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findBestBucket()I

    move-result v0

    goto :goto_2

    .line 835
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 860
    :cond_a
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    if-lt v0, v1, :cond_4

    .line 861
    iput-boolean v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    goto :goto_1
.end method

.method protected static calcQuads([B)[I
    .locals 5
    .parameter

    .prologue
    .line 719
    array-length v2, p0

    .line 720
    add-int/lit8 v0, v2, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v3, v0, [I

    .line 721
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 722
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    .line 724
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_0

    .line 725
    shl-int/lit8 v0, v0, 0x8

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    .line 726
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_0

    .line 727
    shl-int/lit8 v0, v0, 0x8

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    .line 728
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_0

    .line 729
    shl-int/lit8 v0, v0, 0x8

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    .line 733
    :cond_0
    shr-int/lit8 v4, v1, 0x2

    aput v0, v3, v4

    .line 721
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 735
    :cond_1
    return-object v3
.end method

.method private static constructName(ILjava/lang/String;II)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1061
    if-nez p3, :cond_0

    .line 1062
    new-instance v0, Lcom/fasterxml/jackson/core/sym/Name1;

    invoke-direct {v0, p1, p0, p2}, Lcom/fasterxml/jackson/core/sym/Name1;-><init>(Ljava/lang/String;II)V

    .line 1064
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/sym/Name2;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name2;-><init>(Ljava/lang/String;III)V

    goto :goto_0
.end method

.method private static constructName(ILjava/lang/String;[II)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1069
    const/4 v0, 0x4

    if-ge p3, v0, :cond_0

    .line 1070
    packed-switch p3, :pswitch_data_0

    .line 1081
    :cond_0
    new-array v2, p3, [I

    move v0, v1

    .line 1082
    :goto_0
    if-ge v0, p3, :cond_1

    .line 1083
    aget v1, p2, v0

    aput v1, v2, v0

    .line 1082
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1072
    :pswitch_0
    new-instance v0, Lcom/fasterxml/jackson/core/sym/Name1;

    aget v1, p2, v1

    invoke-direct {v0, p1, p0, v1}, Lcom/fasterxml/jackson/core/sym/Name1;-><init>(Ljava/lang/String;II)V

    .line 1085
    :goto_1
    return-object v0

    .line 1074
    :pswitch_1
    new-instance v0, Lcom/fasterxml/jackson/core/sym/Name2;

    aget v1, p2, v1

    aget v2, p2, v2

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/fasterxml/jackson/core/sym/Name2;-><init>(Ljava/lang/String;III)V

    goto :goto_1

    .line 1076
    :pswitch_2
    new-instance v0, Lcom/fasterxml/jackson/core/sym/Name3;

    aget v3, p2, v1

    aget v4, p2, v2

    const/4 v1, 0x2

    aget v5, p2, v1

    move-object v1, p1

    move v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/sym/Name3;-><init>(Ljava/lang/String;IIII)V

    goto :goto_1

    .line 1085
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/core/sym/NameN;

    invoke-direct {v0, p1, p0, v2, p3}, Lcom/fasterxml/jackson/core/sym/NameN;-><init>(Ljava/lang/String;I[II)V

    goto :goto_1

    .line 1070
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createRoot()Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
    .locals 4

    .prologue
    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 324
    long-to-int v2, v0

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    long-to-int v0, v0

    add-int/2addr v0, v2

    or-int/lit8 v0, v0, 0x1

    .line 325
    invoke-static {v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->createRoot(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    move-result-object v0

    return-object v0
.end method

.method protected static createRoot(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
    .locals 3
    .parameter

    .prologue
    .line 333
    new-instance v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;-><init>(IZI)V

    return-object v0
.end method

.method private expandCollision()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1046
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1047
    array-length v1, v0

    .line 1048
    add-int v2, v1, v1

    new-array v2, v2, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1049
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1050
    return-void
.end method

.method private findBestBucket()I
    .locals 6

    .prologue
    .line 989
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 990
    const v3, 0x7fffffff

    .line 991
    const/4 v0, -0x1

    .line 993
    const/4 v1, 0x0

    iget v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    :goto_0
    if-ge v1, v5, :cond_1

    .line 994
    aget-object v2, v4, v1

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length()I

    move-result v2

    .line 995
    if-ge v2, v3, :cond_2

    .line 996
    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    .line 1003
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 993
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 1003
    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public static getEmptyName()Lcom/fasterxml/jackson/core/sym/Name;
    .locals 1

    .prologue
    .line 462
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/Name1;->getEmptyName()Lcom/fasterxml/jackson/core/sym/Name1;

    move-result-object v0

    return-object v0
.end method

.method private initTableInfo(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 296
    new-instance v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    add-int/lit8 v2, p1, -0x1

    new-array v3, p1, [I

    new-array v4, p1, [Lcom/fasterxml/jackson/core/sym/Name;

    const/4 v5, 0x0

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;-><init>(II[I[Lcom/fasterxml/jackson/core/sym/Name;[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;III)V

    return-object v0
.end method

.method private mergeChild(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 372
    iget v1, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    .line 373
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    .line 376
    iget v2, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    if-gt v1, v2, :cond_0

    .line 396
    :goto_0
    return-void

    .line 386
    :cond_0
    const/16 v2, 0x1770

    if-gt v1, v2, :cond_1

    iget v1, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->longestCollisionList:I

    const/16 v2, 0x3f

    if-le v1, v2, :cond_2

    .line 393
    :cond_1
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->initTableInfo(I)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    move-result-object p1

    .line 395
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private nukeSymbols()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 973
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    .line 974
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    .line 975
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 976
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 977
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 978
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 979
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 980
    return-void
.end method

.method private rehash()V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 869
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 871
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 877
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 878
    array-length v3, v0

    .line 879
    add-int v0, v3, v3

    .line 884
    const/high16 v2, 0x1

    if-le v0, v2, :cond_1

    .line 885
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->nukeSymbols()V

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 890
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 891
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 892
    new-array v0, v0, [Lcom/fasterxml/jackson/core/sym/Name;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    move v2, v1

    move v0, v1

    .line 894
    :goto_1
    if-ge v2, v3, :cond_3

    .line 895
    aget-object v5, v4, v2

    .line 896
    if-eqz v5, :cond_2

    .line 897
    add-int/lit8 v0, v0, 0x1

    .line 898
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I

    move-result v6

    .line 899
    iget v7, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int/2addr v7, v6

    .line 900
    iget-object v8, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aput-object v5, v8, v7

    .line 901
    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    shl-int/lit8 v6, v6, 0x8

    aput v6, v5, v7

    .line 894
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 909
    :cond_3
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 910
    if-nez v5, :cond_4

    .line 911
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    goto :goto_0

    .line 915
    :cond_4
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 916
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 917
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 921
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 922
    array-length v2, v6

    new-array v2, v2, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move v4, v1

    move v2, v0

    .line 923
    :goto_2
    if-ge v4, v5, :cond_a

    .line 924
    aget-object v0, v6, v4

    move-object v12, v0

    move v0, v2

    move-object v2, v12

    :goto_3
    if-eqz v2, :cond_9

    .line 925
    add-int/lit8 v3, v0, 0x1

    .line 926
    iget-object v7, v2, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 927
    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I

    move-result v0

    .line 928
    iget v8, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int/2addr v8, v0

    .line 929
    iget-object v9, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v9, v9, v8

    .line 930
    iget-object v10, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aget-object v10, v10, v8

    if-nez v10, :cond_5

    .line 931
    iget-object v9, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    shl-int/lit8 v0, v0, 0x8

    aput v0, v9, v8

    .line 932
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aput-object v7, v0, v8

    move v0, v1

    .line 924
    :goto_4
    iget-object v1, v2, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object v2, v1

    move v1, v0

    move v0, v3

    goto :goto_3

    .line 934
    :cond_5
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 935
    and-int/lit16 v0, v9, 0xff

    .line 936
    if-nez v0, :cond_8

    .line 937
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    const/16 v10, 0xfe

    if-gt v0, v10, :cond_7

    .line 938
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 939
    iget v10, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 941
    iget-object v10, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    array-length v10, v10

    if-lt v0, v10, :cond_6

    .line 942
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->expandCollision()V

    .line 948
    :cond_6
    :goto_5
    iget-object v10, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    and-int/lit16 v9, v9, -0x100

    add-int/lit8 v11, v0, 0x1

    or-int/2addr v9, v11

    aput v9, v10, v8

    .line 953
    :goto_6
    new-instance v8, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iget-object v9, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v9, v9, v0

    invoke-direct {v8, v7, v9}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lcom/fasterxml/jackson/core/sym/Name;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)V

    .line 954
    iget-object v7, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aput-object v8, v7, v0

    .line 955
    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_4

    .line 945
    :cond_7
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findBestBucket()I

    move-result v0

    goto :goto_5

    .line 950
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 923
    :cond_9
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_2

    .line 960
    :cond_a
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    .line 962
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    if-eq v2, v0, :cond_0

    .line 963
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error: count after rehash "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; should be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unshareCollision()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1024
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1025
    if-nez v0, :cond_0

    .line 1026
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1032
    :goto_0
    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 1033
    return-void

    .line 1028
    :cond_0
    array-length v1, v0

    .line 1029
    new-array v2, v1, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1030
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private unshareMain()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1014
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 1015
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    array-length v1, v1

    .line 1017
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 1018
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1019
    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 1020
    return-void
.end method

.method private unshareNames()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1037
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 1038
    array-length v1, v0

    .line 1039
    new-array v2, v1, [Lcom/fasterxml/jackson/core/sym/Name;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 1040
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1041
    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 1042
    return-void
.end method


# virtual methods
.method public addName(Ljava/lang/String;II)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_intern:Z

    if-eqz v0, :cond_0

    .line 618
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 620
    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v0

    .line 621
    :goto_0
    invoke-static {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->constructName(ILjava/lang/String;II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v1

    .line 622
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_addSymbol(ILcom/fasterxml/jackson/core/sym/Name;)V

    .line 623
    return-object v1

    .line 620
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(II)I

    move-result v0

    goto :goto_0
.end method

.method public addName(Ljava/lang/String;[II)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 628
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_intern:Z

    if-eqz v0, :cond_0

    .line 629
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 632
    :cond_0
    const/4 v0, 0x3

    if-ge p3, v0, :cond_2

    .line 633
    if-ne p3, v2, :cond_1

    aget v0, p2, v1

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v0

    .line 637
    :goto_0
    invoke-static {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->constructName(ILjava/lang/String;[II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v1

    .line 638
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_addSymbol(ILcom/fasterxml/jackson/core/sym/Name;)V

    .line 639
    return-object v1

    .line 633
    :cond_1
    aget v0, p2, v1

    aget v1, p2, v2

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(II)I

    move-result v0

    goto :goto_0

    .line 635
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash([II)I

    move-result v0

    goto :goto_0
.end method

.method public bucketCount()I
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    array-length v0, v0

    return v0
.end method

.method public calcHash(I)I
    .locals 2
    .parameter

    .prologue
    .line 664
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashSeed:I

    xor-int/2addr v0, p1

    .line 665
    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    .line 666
    ushr-int/lit8 v1, v0, 0x9

    xor-int/2addr v0, v1

    .line 667
    return v0
.end method

.method public calcHash(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 675
    .line 676
    ushr-int/lit8 v0, p1, 0xf

    xor-int/2addr v0, p1

    .line 677
    mul-int/lit8 v1, p2, 0x21

    add-int/2addr v0, v1

    .line 678
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashSeed:I

    xor-int/2addr v0, v1

    .line 679
    ushr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    .line 680
    return v0
.end method

.method public calcHash([II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    .line 686
    if-ge p2, v0, :cond_0

    .line 687
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 695
    :cond_0
    const/4 v1, 0x0

    aget v1, p1, v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashSeed:I

    xor-int/2addr v1, v2

    .line 696
    ushr-int/lit8 v2, v1, 0x9

    add-int/2addr v1, v2

    .line 697
    mul-int/lit8 v1, v1, 0x21

    .line 698
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/2addr v1, v2

    .line 699
    const v2, 0x1003f

    mul-int/2addr v1, v2

    .line 700
    ushr-int/lit8 v2, v1, 0xf

    add-int/2addr v1, v2

    .line 701
    const/4 v2, 0x2

    aget v2, p1, v2

    xor-int/2addr v1, v2

    .line 702
    ushr-int/lit8 v2, v1, 0x11

    add-int/2addr v1, v2

    .line 704
    :goto_0
    if-ge v0, p2, :cond_1

    .line 705
    mul-int/lit8 v1, v1, 0x1f

    aget v2, p1, v0

    xor-int/2addr v1, v2

    .line 707
    ushr-int/lit8 v2, v1, 0x3

    add-int/2addr v1, v2

    .line 708
    shl-int/lit8 v2, v1, 0x7

    xor-int/2addr v1, v2

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 711
    :cond_1
    ushr-int/lit8 v0, v1, 0xf

    add-int/2addr v0, v1

    .line 712
    shl-int/lit8 v1, v0, 0x9

    xor-int/2addr v0, v1

    .line 713
    return v0
.end method

.method public collisionCount()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    return v0
.end method

.method public findName(I)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 482
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v2

    .line 483
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int/2addr v1, v2

    .line 484
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v3, v3, v1

    .line 489
    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_2

    .line 491
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aget-object v1, v4, v1

    .line 492
    if-nez v1, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-object v0

    .line 495
    :cond_1
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/sym/Name;->equals(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v1

    .line 496
    goto :goto_0

    .line 498
    :cond_2
    if-eqz v3, :cond_0

    .line 502
    :cond_3
    and-int/lit16 v1, v3, 0xff

    .line 503
    if-lez v1, :cond_0

    .line 504
    add-int/lit8 v1, v1, -0x1

    .line 505
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v1, v3, v1

    .line 506
    if-eqz v1, :cond_0

    .line 507
    const/4 v0, 0x0

    invoke-virtual {v1, v2, p1, v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_0
.end method

.method public findName(II)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 531
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v0

    .line 532
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int/2addr v2, v0

    .line 533
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v3, v3, v2

    .line 538
    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v0

    shl-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_2

    .line 540
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aget-object v2, v4, v2

    .line 541
    if-nez v2, :cond_1

    move-object v0, v1

    .line 560
    :goto_1
    return-object v0

    .line 531
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(II)I

    move-result v0

    goto :goto_0

    .line 544
    :cond_1
    invoke-virtual {v2, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;->equals(II)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v2

    .line 545
    goto :goto_1

    .line 547
    :cond_2
    if-nez v3, :cond_3

    move-object v0, v1

    .line 548
    goto :goto_1

    .line 551
    :cond_3
    and-int/lit16 v2, v3, 0xff

    .line 552
    if-lez v2, :cond_4

    .line 553
    add-int/lit8 v2, v2, -0x1

    .line 554
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v2, v3, v2

    .line 555
    if-eqz v2, :cond_4

    .line 556
    invoke-virtual {v2, v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 560
    goto :goto_1
.end method

.method public findName([II)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 582
    const/4 v2, 0x3

    if-ge p2, v2, :cond_2

    .line 583
    aget v1, p1, v0

    const/4 v2, 0x2

    if-ge p2, v2, :cond_1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName(II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 606
    :cond_0
    :goto_1
    return-object v0

    .line 583
    :cond_1
    const/4 v0, 0x1

    aget v0, p1, v0

    goto :goto_0

    .line 585
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash([II)I

    move-result v2

    .line 587
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int/2addr v0, v2

    .line 588
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v3, v3, v0

    .line 589
    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_4

    .line 590
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aget-object v0, v4, v0

    .line 591
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;->equals([II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 598
    :cond_3
    and-int/lit16 v0, v3, 0xff

    .line 599
    if-lez v0, :cond_5

    .line 600
    add-int/lit8 v0, v0, -0x1

    .line 601
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v3, v0

    .line 602
    if-eqz v0, :cond_5

    .line 603
    invoke-virtual {v0, v2, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->find(I[II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 595
    :cond_4
    if-nez v3, :cond_3

    move-object v0, v1

    .line 596
    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 606
    goto :goto_1
.end method

.method public hashSeed()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashSeed:I

    return v0
.end method

.method public makeChild(ZZ)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 346
    new-instance v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashSeed:I

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    invoke-direct {v1, p0, p2, v2, v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;-><init>(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;ZILcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;)V

    return-object v1
.end method

.method public maxCollisionLength()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    return v0
.end method

.method public maybeDirty()Z
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 359
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->maybeDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    new-instance v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;-><init>(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;)V

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->mergeChild(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;)V

    .line 364
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 365
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 366
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 368
    :cond_0
    return-void
.end method

.method protected reportTooManyCollisions(I)V
    .locals 3
    .parameter

    .prologue
    .line 1099
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Longest collision chain in symbol table (of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") now exceeds maximum, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- suspect a DoS attack based on hash collisions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    iget v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    .line 410
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    goto :goto_0
.end method
