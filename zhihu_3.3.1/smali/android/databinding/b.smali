.class public Landroid/databinding/b;
.super Ljava/lang/Object;
.source "CallbackRegistry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TC;>;"
        }
    .end annotation
.end field

.field private b:J

.field private c:[J

.field private d:I

.field private final e:Landroid/databinding/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/b$a",
            "<TC;TT;TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/databinding/b$a;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/b$a",
            "<TC;TT;TA;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/databinding/b;->a:Ljava/util/List;

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/databinding/b;->b:J

    .line 76
    iput-object p1, p0, Landroid/databinding/b;->e:Landroid/databinding/b$a;

    .line 77
    return-void
.end method

.method private a(IJ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 260
    add-int/lit8 v0, p1, 0x40

    .line 262
    const-wide/high16 v2, -0x8000

    .line 263
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, p1, :cond_1

    .line 264
    and-long v4, p2, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Landroid/databinding/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 267
    :cond_0
    const/4 v1, 0x1

    ushr-long/2addr v2, v1

    .line 263
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 269
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;I)V"
        }
    .end annotation

    .prologue
    .line 168
    if-gez p4, :cond_0

    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroid/databinding/b;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 177
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Landroid/databinding/b;->c:[J

    aget-wide v6, v0, p4

    .line 172
    add-int/lit8 v0, p4, 0x1

    mul-int/lit8 v4, v0, 0x40

    .line 173
    iget-object v0, p0, Landroid/databinding/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v4, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 174
    add-int/lit8 v0, p4, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;I)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 175
    invoke-direct/range {v0 .. v7}, Landroid/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;ILjava/lang/Object;IIJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;IIJ)V"
        }
    .end annotation

    .prologue
    .line 198
    const-wide/16 v0, 0x1

    .line 199
    :goto_0
    if-ge p4, p5, :cond_1

    .line 200
    and-long v2, p6, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 201
    iget-object v2, p0, Landroid/databinding/b;->e:Landroid/databinding/b$a;

    iget-object v3, p0, Landroid/databinding/b;->a:Ljava/util/List;

    invoke-interface {v3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/databinding/b$a;->a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 203
    :cond_0
    const/4 v2, 0x1

    shl-long/2addr v0, v2

    .line 199
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 205
    :cond_1
    return-void
.end method

.method private a(I)Z
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    const/16 v2, 0x40

    if-ge p1, v2, :cond_2

    .line 231
    shl-long v2, v8, p1

    .line 232
    iget-wide v4, p0, Landroid/databinding/b;->b:J

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 232
    goto :goto_0

    .line 233
    :cond_2
    iget-object v2, p0, Landroid/databinding/b;->c:[J

    if-nez v2, :cond_3

    move v0, v1

    .line 235
    goto :goto_0

    .line 237
    :cond_3
    div-int/lit8 v2, p1, 0x40

    add-int/lit8 v2, v2, -0x1

    .line 238
    iget-object v3, p0, Landroid/databinding/b;->c:[J

    array-length v3, v3

    if-lt v2, v3, :cond_4

    move v0, v1

    .line 240
    goto :goto_0

    .line 243
    :cond_4
    iget-object v3, p0, Landroid/databinding/b;->c:[J

    aget-wide v2, v3, v2

    .line 244
    rem-int/lit8 v4, p1, 0x40

    shl-long v4, v8, v4

    .line 245
    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(I)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x1

    const/4 v4, 0x0

    .line 288
    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    .line 290
    shl-long v0, v6, p1

    .line 291
    iget-wide v2, p0, Landroid/databinding/b;->b:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/databinding/b;->b:J

    .line 305
    :goto_0
    return-void

    .line 293
    :cond_0
    div-int/lit8 v0, p1, 0x40

    add-int/lit8 v0, v0, -0x1

    .line 294
    iget-object v1, p0, Landroid/databinding/b;->c:[J

    if-nez v1, :cond_2

    .line 295
    iget-object v1, p0, Landroid/databinding/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x40

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/databinding/b;->c:[J

    .line 302
    :cond_1
    :goto_1
    rem-int/lit8 v1, p1, 0x40

    shl-long v2, v6, v1

    .line 303
    iget-object v1, p0, Landroid/databinding/b;->c:[J

    aget-wide v4, v1, v0

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    goto :goto_0

    .line 296
    :cond_2
    iget-object v1, p0, Landroid/databinding/b;->c:[J

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 298
    iget-object v1, p0, Landroid/databinding/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x40

    new-array v1, v1, [J

    .line 299
    iget-object v2, p0, Landroid/databinding/b;->c:[J

    iget-object v3, p0, Landroid/databinding/b;->c:[J

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    iput-object v1, p0, Landroid/databinding/b;->c:[J

    goto :goto_1
.end method

.method private b(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .prologue
    .line 121
    const/16 v0, 0x40

    iget-object v1, p0, Landroid/databinding/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 122
    const/4 v4, 0x0

    iget-wide v6, p0, Landroid/databinding/b;->b:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    .line 123
    return-void
.end method

.method private c(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Landroid/databinding/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 141
    iget-object v0, p0, Landroid/databinding/b;->c:[J

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 145
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 149
    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v4, v0, 0x40

    .line 152
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    .line 153
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Landroid/databinding/b;->c:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()Landroid/databinding/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/b",
            "<TC;TT;TA;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 377
    monitor-enter p0

    .line 379
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/databinding/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    const-wide/16 v4, 0x0

    :try_start_1
    iput-wide v4, v0, Landroid/databinding/b;->b:J

    .line 381
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/databinding/b;->c:[J

    .line 382
    const/4 v1, 0x0

    iput v1, v0, Landroid/databinding/b;->d:I

    .line 383
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/databinding/b;->a:Ljava/util/List;

    .line 384
    iget-object v1, p0, Landroid/databinding/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    .line 385
    :goto_0
    if-ge v1, v3, :cond_1

    .line 386
    invoke-direct {p0, v1}, Landroid/databinding/b;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 387
    iget-object v2, v0, Landroid/databinding/b;->a:Ljava/util/List;

    iget-object v4, p0, Landroid/databinding/b;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 385
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 391
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 393
    :cond_1
    monitor-exit p0

    return-object v0

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 390
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 213
    monitor-enter p0

    if-nez p1, :cond_0

    .line 214
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 216
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/databinding/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 217
    if-ltz v0, :cond_1

    invoke-direct {p0, v0}, Landroid/databinding/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    :cond_1
    iget-object v0, p0, Landroid/databinding/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 90
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/databinding/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/databinding/b;->d:I

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/databinding/b;->c(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 92
    iget v0, p0, Landroid/databinding/b;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/databinding/b;->d:I

    .line 93
    iget v0, p0, Landroid/databinding/b;->d:I

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Landroid/databinding/b;->c:[J

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Landroid/databinding/b;->c:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 96
    iget-object v1, p0, Landroid/databinding/b;->c:[J

    aget-wide v2, v1, v0

    .line 97
    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 98
    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v1, v1, 0x40

    invoke-direct {p0, v1, v2, v3}, Landroid/databinding/b;->a(IJ)V

    .line 99
    iget-object v1, p0, Landroid/databinding/b;->c:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 95
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 103
    :cond_1
    iget-wide v0, p0, Landroid/databinding/b;->b:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 104
    const/4 v0, 0x0

    iget-wide v2, p0, Landroid/databinding/b;->b:J

    invoke-direct {p0, v0, v2, v3}, Landroid/databinding/b;->a(IJ)V

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/databinding/b;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_2
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/databinding/b;->d:I

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Landroid/databinding/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 280
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/databinding/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 281
    if-ltz v0, :cond_0

    .line 282
    invoke-direct {p0, v0}, Landroid/databinding/b;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/databinding/b;->a()Landroid/databinding/b;

    move-result-object v0

    return-object v0
.end method
