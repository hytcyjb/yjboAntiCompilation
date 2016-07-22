.class Lcom/tendcloud/tenddata/h$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/h$c$a;
    }
.end annotation


# static fields
.field static final synthetic b:Z


# instance fields
.field a:[Lcom/tendcloud/tenddata/h$c$a;

.field final synthetic c:Lcom/tendcloud/tenddata/h;

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tendcloud/tenddata/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tendcloud/tenddata/h$c;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/tendcloud/tenddata/h;II)V
    .locals 4

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/tendcloud/tenddata/h$c;->c:Lcom/tendcloud/tenddata/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/tendcloud/tenddata/h$c;->d:I

    shl-int v0, v1, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/h$c;->e:I

    add-int v0, p2, p3

    shl-int v0, v1, v0

    new-array v0, v0, [Lcom/tendcloud/tenddata/h$c$a;

    iput-object v0, p0, Lcom/tendcloud/tenddata/h$c;->a:[Lcom/tendcloud/tenddata/h$c$a;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/h$c;->a:[Lcom/tendcloud/tenddata/h$c$a;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/tendcloud/tenddata/h$c;->a:[Lcom/tendcloud/tenddata/h$c$a;

    new-instance v2, Lcom/tendcloud/tenddata/h$c$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/tendcloud/tenddata/h$c$a;-><init>(Lcom/tendcloud/tenddata/h$c;Lcom/tendcloud/tenddata/h$b;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method final a(II)I
    .locals 3

    iget v0, p0, Lcom/tendcloud/tenddata/h$c;->d:I

    rsub-int/lit8 v0, v0, 0x8

    shr-int v0, p1, v0

    iget v1, p0, Lcom/tendcloud/tenddata/h$c;->e:I

    and-int/2addr v1, p2

    iget v2, p0, Lcom/tendcloud/tenddata/h$c;->d:I

    shl-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method a(IIIILcom/tendcloud/tenddata/ac;)I
    .locals 3

    iget-object v0, p0, Lcom/tendcloud/tenddata/h$c;->c:Lcom/tendcloud/tenddata/h;

    iget-object v0, v0, Lcom/tendcloud/tenddata/h;->q:[[S

    invoke-virtual {p5}, Lcom/tendcloud/tenddata/ac;->b()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/h$c;->c:Lcom/tendcloud/tenddata/h;

    iget v1, v1, Lcom/tendcloud/tenddata/h;->n:I

    and-int/2addr v1, p4

    aget-short v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/j;->a(II)I

    move-result v1

    invoke-virtual {p0, p3, p4}, Lcom/tendcloud/tenddata/h$c;->a(II)I

    move-result v0

    invoke-virtual {p5}, Lcom/tendcloud/tenddata/ac;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tendcloud/tenddata/h$c;->a:[Lcom/tendcloud/tenddata/h$c$a;

    aget-object v0, v2, v0

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/h$c$a;->a(I)I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v2, p0, Lcom/tendcloud/tenddata/h$c;->a:[Lcom/tendcloud/tenddata/h$c$a;

    aget-object v0, v2, v0

    invoke-virtual {v0, p1, p2}, Lcom/tendcloud/tenddata/h$c$a;->a(II)I

    move-result v0

    goto :goto_0
.end method

.method a()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/h$c;->a:[Lcom/tendcloud/tenddata/h$c$a;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/tendcloud/tenddata/h$c;->a:[Lcom/tendcloud/tenddata/h$c$a;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/h$c$a;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    sget-boolean v0, Lcom/tendcloud/tenddata/h$c;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/h$c;->c:Lcom/tendcloud/tenddata/h;

    iget v0, v0, Lcom/tendcloud/tenddata/h;->F:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/h$c;->a:[Lcom/tendcloud/tenddata/h$c$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/h$c$a;->b()V

    return-void
.end method

.method c()V
    .locals 3

    sget-boolean v0, Lcom/tendcloud/tenddata/h$c;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/h$c;->c:Lcom/tendcloud/tenddata/h;

    iget v0, v0, Lcom/tendcloud/tenddata/h;->F:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/h$c;->c:Lcom/tendcloud/tenddata/h;

    iget-object v0, v0, Lcom/tendcloud/tenddata/h;->z:Lcom/tendcloud/tenddata/k;

    iget-object v1, p0, Lcom/tendcloud/tenddata/h$c;->c:Lcom/tendcloud/tenddata/h;

    iget v1, v1, Lcom/tendcloud/tenddata/h;->F:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/k;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/h$c;->c:Lcom/tendcloud/tenddata/h;

    iget-object v1, v1, Lcom/tendcloud/tenddata/h;->z:Lcom/tendcloud/tenddata/k;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/k;->f()I

    move-result v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/h$c;->c:Lcom/tendcloud/tenddata/h;

    iget v2, v2, Lcom/tendcloud/tenddata/h;->F:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/h$c;->a(II)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/h$c;->a:[Lcom/tendcloud/tenddata/h$c$a;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/h$c$a;->b()V

    return-void
.end method
