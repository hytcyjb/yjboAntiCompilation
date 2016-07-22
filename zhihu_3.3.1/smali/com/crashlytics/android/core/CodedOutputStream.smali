.class final Lcom/crashlytics/android/core/CodedOutputStream;
.super Ljava/lang/Object;
.source "CodedOutputStream.java"

# interfaces
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/CodedOutputStream$OutOfSpaceException;
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private final d:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->d:Ljava/io/OutputStream;

    .line 89
    iput-object p2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->a:[B

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    .line 91
    array-length v0, p2

    iput v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->b:I

    .line 92
    return-void
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;
    .locals 1
    .parameter

    .prologue
    .line 99
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/OutputStream;I)Lcom/crashlytics/android/core/CodedOutputStream;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 108
    new-instance v0, Lcom/crashlytics/android/core/CodedOutputStream;

    new-array v1, p1, [B

    invoke-direct {v0, p0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 661
    iget-object v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 663
    new-instance v0, Lcom/crashlytics/android/core/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0}, Lcom/crashlytics/android/core/CodedOutputStream$OutOfSpaceException;-><init>()V

    throw v0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->d:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->a:[B

    iget v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 669
    iput v3, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    .line 670
    return-void
.end method

.method public static b(F)I
    .locals 1
    .parameter

    .prologue
    .line 527
    const/4 v0, 0x4

    return v0
.end method

.method public static b(IF)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 377
    invoke-static {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->j(I)I

    move-result v0

    invoke-static {p1}, Lcom/crashlytics/android/core/CodedOutputStream;->b(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IJ)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 385
    invoke-static {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->j(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILcom/crashlytics/android/core/b;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 446
    invoke-static {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->j(I)I

    move-result v0

    invoke-static {p1}, Lcom/crashlytics/android/core/CodedOutputStream;->b(Lcom/crashlytics/android/core/b;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IZ)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 428
    invoke-static {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->j(I)I

    move-result v0

    invoke-static {p1}, Lcom/crashlytics/android/core/CodedOutputStream;->b(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(J)I
    .locals 2
    .parameter

    .prologue
    .line 535
    invoke-static {p0, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->d(J)I

    move-result v0

    return v0
.end method

.method public static b(Lcom/crashlytics/android/core/b;)I
    .locals 2
    .parameter

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/crashlytics/android/core/b;->a()I

    move-result v0

    invoke-static {v0}, Lcom/crashlytics/android/core/CodedOutputStream;->l(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/crashlytics/android/core/b;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(Z)I
    .locals 1
    .parameter

    .prologue
    .line 580
    const/4 v0, 0x1

    return v0
.end method

.method public static d(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 454
    invoke-static {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->j(I)I

    move-result v0

    invoke-static {p1}, Lcom/crashlytics/android/core/CodedOutputStream;->f(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(J)I
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 881
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 890
    :goto_0
    return v0

    .line 882
    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 883
    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 884
    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 885
    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 886
    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 887
    :cond_5
    const-wide/high16 v0, -0x2

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 888
    :cond_6
    const-wide/high16 v0, -0x100

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    .line 889
    :cond_7
    const-wide/high16 v0, -0x8000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    .line 890
    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static e(I)I
    .locals 1
    .parameter

    .prologue
    .line 551
    if-ltz p0, :cond_0

    .line 552
    invoke-static {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->l(I)I

    move-result v0

    .line 555
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static e(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 463
    invoke-static {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->j(I)I

    move-result v0

    invoke-static {p1}, Lcom/crashlytics/android/core/CodedOutputStream;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static f(I)I
    .locals 1
    .parameter

    .prologue
    .line 611
    invoke-static {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->l(I)I

    move-result v0

    return v0
.end method

.method public static f(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 489
    invoke-static {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->j(I)I

    move-result v0

    invoke-static {p1}, Lcom/crashlytics/android/core/CodedOutputStream;->h(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static g(I)I
    .locals 1
    .parameter

    .prologue
    .line 619
    invoke-static {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->e(I)I

    move-result v0

    return v0
.end method

.method public static h(I)I
    .locals 1
    .parameter

    .prologue
    .line 643
    invoke-static {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->n(I)I

    move-result v0

    invoke-static {v0}, Lcom/crashlytics/android/core/CodedOutputStream;->l(I)I

    move-result v0

    return v0
.end method

.method public static j(I)I
    .locals 1
    .parameter

    .prologue
    .line 834
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/crashlytics/android/core/WireFormat;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/crashlytics/android/core/CodedOutputStream;->l(I)I

    move-result v0

    return v0
.end method

.method public static l(I)I
    .locals 1
    .parameter

    .prologue
    .line 859
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 863
    :goto_0
    return v0

    .line 860
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 861
    :cond_1
    const/high16 v0, -0x20

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 862
    :cond_2
    const/high16 v0, -0x1000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 863
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static n(I)I
    .locals 2
    .parameter

    .prologue
    .line 929
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a(B)V
    .locals 3
    .parameter

    .prologue
    .line 726
    iget v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    iget v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->b:I

    if-ne v0, v1, :cond_0

    .line 727
    invoke-direct {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->a()V

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->a:[B

    iget v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    aput-byte p1, v0, v1

    .line 731
    return-void
.end method

.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 274
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->m(I)V

    .line 275
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 289
    if-ltz p1, :cond_0

    .line 290
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->k(I)V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->c(J)V

    goto :goto_0
.end method

.method public a(IF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 147
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->g(II)V

    .line 148
    invoke-virtual {p0, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->a(F)V

    .line 149
    return-void
.end method

.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->g(II)V

    .line 211
    invoke-virtual {p0, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->b(I)V

    .line 212
    return-void
.end method

.method public a(IJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->g(II)V

    .line 155
    invoke-virtual {p0, p2, p3}, Lcom/crashlytics/android/core/CodedOutputStream;->a(J)V

    .line 156
    return-void
.end method

.method public a(ILcom/crashlytics/android/core/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 203
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->g(II)V

    .line 204
    invoke-virtual {p0, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->a(Lcom/crashlytics/android/core/b;)V

    .line 205
    return-void
.end method

.method public a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->g(II)V

    .line 190
    invoke-virtual {p0, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->a(Z)V

    .line 191
    return-void
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->c(J)V

    .line 280
    return-void
.end method

.method public a(Lcom/crashlytics/android/core/b;)V
    .locals 1
    .parameter

    .prologue
    .line 324
    invoke-virtual {p1}, Lcom/crashlytics/android/core/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->k(I)V

    .line 325
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->c(Lcom/crashlytics/android/core/b;)V

    .line 326
    return-void
.end method

.method public a(Lcom/crashlytics/android/core/b;II)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 782
    iget v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->b:I

    iget v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_1

    .line 784
    iget-object v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->a:[B

    iget v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/crashlytics/android/core/b;->a([BIII)V

    .line 785
    iget v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    iget v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->b:I

    iget v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    sub-int/2addr v0, v1

    .line 790
    iget-object v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->a:[B

    iget v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    invoke-virtual {p1, v1, p2, v2, v0}, Lcom/crashlytics/android/core/b;->a([BIII)V

    .line 791
    add-int v1, p2, v0

    .line 792
    sub-int v0, p3, v0

    .line 793
    iget v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->b:I

    iput v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    .line 794
    invoke-direct {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->a()V

    .line 799
    iget v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->b:I

    if-gt v0, v2, :cond_2

    .line 801
    iget-object v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->a:[B

    invoke-virtual {p1, v2, v1, v8, v0}, Lcom/crashlytics/android/core/b;->a([BIII)V

    .line 802
    iput v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    goto :goto_0

    .line 808
    :cond_2
    invoke-virtual {p1}, Lcom/crashlytics/android/core/b;->b()Ljava/io/InputStream;

    move-result-object v2

    .line 809
    int-to-long v4, v1

    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    .line 810
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Skip failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_3
    iget-object v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->d:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/crashlytics/android/core/CodedOutputStream;->a:[B

    invoke-virtual {v1, v4, v8, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 820
    sub-int/2addr v0, v3

    .line 813
    :cond_4
    if-lez v0, :cond_0

    .line 814
    iget v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 815
    iget-object v3, p0, Lcom/crashlytics/android/core/CodedOutputStream;->a:[B

    invoke-virtual {v2, v3, v8, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 816
    if-eq v3, v1, :cond_3

    .line 817
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Read failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 309
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->i(I)V

    .line 310
    return-void

    .line 309
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([B)V
    .locals 2
    .parameter

    .prologue
    .line 745
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->a([BII)V

    .line 746
    return-void
.end method

.method public a([BII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 751
    iget v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->b:I

    iget v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    .line 753
    iget-object v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->a:[B

    iget v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    iget v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    .line 777
    :goto_0
    return-void

    .line 758
    :cond_0
    iget v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->b:I

    iget v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    sub-int/2addr v0, v1

    .line 759
    iget-object v1, p0, Lcom/crashlytics/android/core/CodedOutputStream;->a:[B

    iget v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 760
    add-int v1, p2, v0

    .line 761
    sub-int v0, p3, v0

    .line 762
    iget v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->b:I

    iput v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    .line 763
    invoke-direct {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->a()V

    .line 768
    iget v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->b:I

    if-gt v0, v2, :cond_1

    .line 770
    iget-object v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->a:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 771
    iput v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->c:I

    goto :goto_0

    .line 774
    :cond_1
    iget-object v2, p0, Lcom/crashlytics/android/core/CodedOutputStream;->d:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->k(I)V

    .line 331
    return-void
.end method

.method public b(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->g(II)V

    .line 221
    invoke-virtual {p0, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->c(I)V

    .line 222
    return-void
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->a(I)V

    .line 339
    return-void
.end method

.method public c(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->g(II)V

    .line 242
    invoke-virtual {p0, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->d(I)V

    .line 243
    return-void
.end method

.method public c(J)V
    .locals 5
    .parameter

    .prologue
    .line 869
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 870
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->i(I)V

    .line 871
    return-void

    .line 873
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->i(I)V

    .line 874
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public c(Lcom/crashlytics/android/core/b;)V
    .locals 2
    .parameter

    .prologue
    .line 740
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/crashlytics/android/core/b;->a()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->a(Lcom/crashlytics/android/core/b;II)V

    .line 741
    return-void
.end method

.method public d(I)V
    .locals 1
    .parameter

    .prologue
    .line 353
    invoke-static {p1}, Lcom/crashlytics/android/core/CodedOutputStream;->n(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->k(I)V

    .line 354
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/crashlytics/android/core/CodedOutputStream;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 678
    invoke-direct {p0}, Lcom/crashlytics/android/core/CodedOutputStream;->a()V

    .line 680
    :cond_0
    return-void
.end method

.method public g(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 829
    invoke-static {p1, p2}, Lcom/crashlytics/android/core/WireFormat;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->k(I)V

    .line 830
    return-void
.end method

.method public i(I)V
    .locals 1
    .parameter

    .prologue
    .line 735
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->a(B)V

    .line 736
    return-void
.end method

.method public k(I)V
    .locals 1
    .parameter

    .prologue
    .line 843
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 844
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->i(I)V

    .line 845
    return-void

    .line 847
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->i(I)V

    .line 848
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public m(I)V
    .locals 1
    .parameter

    .prologue
    .line 895
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->i(I)V

    .line 896
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->i(I)V

    .line 897
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->i(I)V

    .line 898
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->i(I)V

    .line 899
    return-void
.end method
