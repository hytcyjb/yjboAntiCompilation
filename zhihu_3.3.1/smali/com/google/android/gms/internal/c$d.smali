.class public final Lcom/google/android/gms/internal/c$d;
.super Lcom/google/android/gms/internal/ph;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ph",
        "<",
        "Lcom/google/android/gms/internal/c$d;",
        ">;"
    }
.end annotation


# instance fields
.field public fA:[Lcom/google/android/gms/internal/d$a;

.field public fB:[Lcom/google/android/gms/internal/d$a;

.field public fC:[Lcom/google/android/gms/internal/c$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ph;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$d;->h()Lcom/google/android/gms/internal/c$d;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/pg;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fA:[Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fA:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fA:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fA:[Lcom/google/android/gms/internal/d$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/pg;->a(ILcom/google/android/gms/internal/pn;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fB:[Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fB:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fB:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fB:[Lcom/google/android/gms/internal/d$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/pg;->a(ILcom/google/android/gms/internal/pn;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fC:[Lcom/google/android/gms/internal/c$c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fC:[Lcom/google/android/gms/internal/c$c;

    array-length v0, v0

    if-lez v0, :cond_5

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fC:[Lcom/google/android/gms/internal/c$c;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fC:[Lcom/google/android/gms/internal/c$c;

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/pg;->a(ILcom/google/android/gms/internal/pn;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ph;->a(Lcom/google/android/gms/internal/pg;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/internal/pf;)Lcom/google/android/gms/internal/pn;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$d;->e(Lcom/google/android/gms/internal/pf;)Lcom/google/android/gms/internal/c$d;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/ph;->c()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fA:[Lcom/google/android/gms/internal/d$a;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fA:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->fA:[Lcom/google/android/gms/internal/d$a;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->fA:[Lcom/google/android/gms/internal/d$a;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/pg;->c(ILcom/google/android/gms/internal/pn;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fB:[Lcom/google/android/gms/internal/d$a;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fB:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->fB:[Lcom/google/android/gms/internal/d$a;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->fB:[Lcom/google/android/gms/internal/d$a;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/pg;->c(ILcom/google/android/gms/internal/pn;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fC:[Lcom/google/android/gms/internal/c$c;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fC:[Lcom/google/android/gms/internal/c$c;

    array-length v2, v2

    if-lez v2, :cond_7

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fC:[Lcom/google/android/gms/internal/c$c;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->fC:[Lcom/google/android/gms/internal/c$c;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/pg;->c(ILcom/google/android/gms/internal/pn;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return v0
.end method

.method public e(Lcom/google/android/gms/internal/pf;)Lcom/google/android/gms/internal/c$d;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pf;->qi()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$d;->a(Lcom/google/android/gms/internal/pf;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pq;->b(Lcom/google/android/gms/internal/pf;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fA:[Lcom/google/android/gms/internal/d$a;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->fA:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/pf;->a(Lcom/google/android/gms/internal/pn;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pf;->qi()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fA:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pf;->a(Lcom/google/android/gms/internal/pn;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/c$d;->fA:[Lcom/google/android/gms/internal/d$a;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pq;->b(Lcom/google/android/gms/internal/pf;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fB:[Lcom/google/android/gms/internal/d$a;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->fB:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/pf;->a(Lcom/google/android/gms/internal/pn;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pf;->qi()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fB:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pf;->a(Lcom/google/android/gms/internal/pn;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/c$d;->fB:[Lcom/google/android/gms/internal/d$a;

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pq;->b(Lcom/google/android/gms/internal/pf;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fC:[Lcom/google/android/gms/internal/c$c;

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/c$c;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/c$d;->fC:[Lcom/google/android/gms/internal/c$c;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    new-instance v3, Lcom/google/android/gms/internal/c$c;

    invoke-direct {v3}, Lcom/google/android/gms/internal/c$c;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/pf;->a(Lcom/google/android/gms/internal/pn;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pf;->qi()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fC:[Lcom/google/android/gms/internal/c$c;

    array-length v0, v0

    goto :goto_5

    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/c$c;

    invoke-direct {v3}, Lcom/google/android/gms/internal/c$c;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pf;->a(Lcom/google/android/gms/internal/pn;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/c$d;->fC:[Lcom/google/android/gms/internal/c$c;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/c$d;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/c$d;

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->fA:[Lcom/google/android/gms/internal/d$a;

    iget-object v2, p1, Lcom/google/android/gms/internal/c$d;->fA:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pl;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->fB:[Lcom/google/android/gms/internal/d$a;

    iget-object v2, p1, Lcom/google/android/gms/internal/c$d;->fB:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pl;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->fC:[Lcom/google/android/gms/internal/c$c;

    iget-object v2, p1, Lcom/google/android/gms/internal/c$d;->fC:[Lcom/google/android/gms/internal/c$c;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pl;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$d;->a(Lcom/google/android/gms/internal/ph;)Z

    move-result v0

    goto :goto_0
.end method

.method public h()Lcom/google/android/gms/internal/c$d;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/d$a;->r()[Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$d;->fA:[Lcom/google/android/gms/internal/d$a;

    invoke-static {}, Lcom/google/android/gms/internal/d$a;->r()[Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$d;->fB:[Lcom/google/android/gms/internal/d$a;

    invoke-static {}, Lcom/google/android/gms/internal/c$c;->f()[Lcom/google/android/gms/internal/c$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$d;->fC:[Lcom/google/android/gms/internal/c$c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$d;->awJ:Lcom/google/android/gms/internal/pj;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$d;->awU:I

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->fA:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/pl;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->fB:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/pl;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->fC:[Lcom/google/android/gms/internal/c$c;

    invoke-static {v1}, Lcom/google/android/gms/internal/pl;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$d;->qz()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
