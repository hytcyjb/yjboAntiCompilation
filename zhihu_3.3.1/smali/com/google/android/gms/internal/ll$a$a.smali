.class public final Lcom/google/android/gms/internal/ll$a$a;
.super Lcom/google/android/gms/internal/ph;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ll$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ph",
        "<",
        "Lcom/google/android/gms/internal/ll$a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile adF:[Lcom/google/android/gms/internal/ll$a$a;


# instance fields
.field public adG:Ljava/lang/String;

.field public adH:Ljava/lang/String;

.field public viewId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ph;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ll$a$a;->lR()Lcom/google/android/gms/internal/ll$a$a;

    return-void
.end method

.method public static lQ()[Lcom/google/android/gms/internal/ll$a$a;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ll$a$a;->adF:[Lcom/google/android/gms/internal/ll$a$a;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/pl;->awT:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ll$a$a;->adF:[Lcom/google/android/gms/internal/ll$a$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/ll$a$a;

    sput-object v0, Lcom/google/android/gms/internal/ll$a$a;->adF:[Lcom/google/android/gms/internal/ll$a$a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ll$a$a;->adF:[Lcom/google/android/gms/internal/ll$a$a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/pg;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ll$a$a;->adG:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ll$a$a;->adG:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pg;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ll$a$a;->adH:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ll$a$a;->adH:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pg;->b(ILjava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ll$a$a;->viewId:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/ll$a$a;->viewId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pg;->s(II)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ph;->a(Lcom/google/android/gms/internal/pg;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/internal/pf;)Lcom/google/android/gms/internal/pn;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ll$a$a;->o(Lcom/google/android/gms/internal/pf;)Lcom/google/android/gms/internal/ll$a$a;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/ph;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ll$a$a;->adG:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ll$a$a;->adG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pg;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ll$a$a;->adH:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ll$a$a;->adH:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pg;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ll$a$a;->viewId:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/ll$a$a;->viewId:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pg;->u(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
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
    instance-of v1, p1, Lcom/google/android/gms/internal/ll$a$a;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ll$a$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ll$a$a;->adG:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/ll$a$a;->adG:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ll$a$a;->adH:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/ll$a$a;->adH:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/ll$a$a;->viewId:I

    iget v2, p1, Lcom/google/android/gms/internal/ll$a$a;->viewId:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ll$a$a;->a(Lcom/google/android/gms/internal/ph;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ll$a$a;->adG:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ll$a$a;->adG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ll$a$a;->adH:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ll$a$a;->adH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ll$a$a;->adG:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ll$a$a;->adH:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ll$a$a;->viewId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ll$a$a;->qz()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ll$a$a;->adG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ll$a$a;->adH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public lR()Lcom/google/android/gms/internal/ll$a$a;
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ll$a$a;->adG:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ll$a$a;->adH:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ll$a$a;->viewId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ll$a$a;->awJ:Lcom/google/android/gms/internal/pj;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ll$a$a;->awU:I

    return-object p0
.end method

.method public o(Lcom/google/android/gms/internal/pf;)Lcom/google/android/gms/internal/ll$a$a;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pf;->qi()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ll$a$a;->a(Lcom/google/android/gms/internal/pf;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pf;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ll$a$a;->adG:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pf;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ll$a$a;->adH:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pf;->ql()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ll$a$a;->viewId:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method
