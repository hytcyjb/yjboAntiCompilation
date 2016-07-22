.class Lcom/ddtaxi/a/a/hc;
.super Lcom/ddtaxi/a/a/k;


# static fields
.field private static final f:[I


# instance fields
.field private final g:I

.field private final h:Lcom/ddtaxi/a/a/k;

.field private final i:Lcom/ddtaxi/a/a/k;

.field private final j:I

.field private final k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_0
    if-gtz v0, :cond_0

    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ddtaxi/a/a/hc;->f:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/ddtaxi/a/a/hc;->f:[I

    array-length v0, v0

    if-lt v1, v0, :cond_1

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v0

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/ddtaxi/a/a/hc;->f:[I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/k;)V
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/k;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/a/a/hc;->l:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/hc;->h:Lcom/ddtaxi/a/a/k;

    iput-object p2, p0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v0

    iput v0, p0, Lcom/ddtaxi/a/a/hc;->j:I

    iget v0, p0, Lcom/ddtaxi/a/a/hc;->j:I

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ddtaxi/a/a/hc;->g:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->m()I

    move-result v0

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/k;->m()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/hc;->k:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/hc;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/hc;-><init>(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/k;)V

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/hc;)Lcom/ddtaxi/a/a/k;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hc;->h:Lcom/ddtaxi/a/a/k;

    return-object v0
.end method

.method static a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/k;
    .locals 6

    const/4 v1, 0x0

    const/16 v5, 0x80

    instance-of v0, p0, Lcom/ddtaxi/a/a/hc;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/ddtaxi/a/a/hc;

    :goto_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    return-object p0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v2

    if-nez v2, :cond_2

    move-object p0, p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v2, v5, :cond_3

    invoke-static {p0, p1}, Lcom/ddtaxi/a/a/hc;->c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/gi;

    move-result-object p0

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v3

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v5, :cond_4

    iget-object v1, v0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    invoke-static {v1, p1}, Lcom/ddtaxi/a/a/hc;->c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/gi;

    move-result-object v1

    new-instance p0, Lcom/ddtaxi/a/a/hc;

    iget-object v0, v0, Lcom/ddtaxi/a/a/hc;->h:Lcom/ddtaxi/a/a/k;

    invoke-direct {p0, v0, v1}, Lcom/ddtaxi/a/a/hc;-><init>(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/k;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/ddtaxi/a/a/hc;->h:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/k;->m()I

    move-result v3

    iget-object v4, v0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/k;->m()I

    move-result v4

    if-le v3, v4, :cond_5

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hc;->m()I

    move-result v3

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->m()I

    move-result v4

    if-le v3, v4, :cond_5

    new-instance v1, Lcom/ddtaxi/a/a/hc;

    iget-object v2, v0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    invoke-direct {v1, v2, p1}, Lcom/ddtaxi/a/a/hc;-><init>(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/k;)V

    new-instance p0, Lcom/ddtaxi/a/a/hc;

    iget-object v0, v0, Lcom/ddtaxi/a/a/hc;->h:Lcom/ddtaxi/a/a/k;

    invoke-direct {p0, v0, v1}, Lcom/ddtaxi/a/a/hc;-><init>(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/k;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->m()I

    move-result v0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->m()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lcom/ddtaxi/a/a/hc;->f:[I

    aget v0, v3, v0

    if-lt v2, v0, :cond_6

    new-instance v0, Lcom/ddtaxi/a/a/hc;

    invoke-direct {v0, p0, p1}, Lcom/ddtaxi/a/a/hc;-><init>(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/k;)V

    move-object p0, v0

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/ddtaxi/a/a/hd;

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/hd;-><init>(Lcom/ddtaxi/a/a/hd;)V

    invoke-static {v0, p0, p1}, Lcom/ddtaxi/a/a/hd;->a(Lcom/ddtaxi/a/a/hd;Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/k;

    move-result-object p0

    goto/16 :goto_1
.end method

.method static b(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/hc;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/hc;

    invoke-direct {v0, p0, p1}, Lcom/ddtaxi/a/a/hc;-><init>(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/k;)V

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/hc;)Lcom/ddtaxi/a/a/k;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    return-object v0
.end method

.method static synthetic b()[I
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/hc;->f:[I

    return-object v0
.end method

.method private static c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/gi;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v1

    add-int v2, v0, v1

    new-array v2, v2, [B

    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/ddtaxi/a/a/k;->b([BIII)V

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/ddtaxi/a/a/k;->b([BIII)V

    new-instance v0, Lcom/ddtaxi/a/a/gi;

    invoke-direct {v0, v2}, Lcom/ddtaxi/a/a/gi;-><init>([B)V

    return-object v0
.end method

.method private d(Lcom/ddtaxi/a/a/k;)Z
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v7, Lcom/ddtaxi/a/a/he;

    invoke-direct {v7, p0, v1}, Lcom/ddtaxi/a/a/he;-><init>(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/he;)V

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gi;

    new-instance v8, Lcom/ddtaxi/a/a/he;

    invoke-direct {v8, p1, v1}, Lcom/ddtaxi/a/a/he;-><init>(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/he;)V

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ddtaxi/a/a/gi;

    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    move v0, v2

    :goto_0
    invoke-virtual {v5}, Lcom/ddtaxi/a/a/gi;->a()I

    move-result v1

    sub-int v9, v1, v6

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/gi;->a()I

    move-result v1

    sub-int v10, v1, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-nez v6, :cond_0

    invoke-virtual {v5, v3, v4, v11}, Lcom/ddtaxi/a/a/gi;->a(Lcom/ddtaxi/a/a/gi;II)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_1

    :goto_2
    return v2

    :cond_0
    invoke-virtual {v3, v5, v6, v11}, Lcom/ddtaxi/a/a/gi;->a(Lcom/ddtaxi/a/a/gi;II)Z

    move-result v1

    goto :goto_1

    :cond_1
    add-int v1, v0, v11

    iget v0, p0, Lcom/ddtaxi/a/a/hc;->g:I

    if-lt v1, v0, :cond_3

    iget v0, p0, Lcom/ddtaxi/a/a/hc;->g:I

    if-ne v1, v0, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3
    if-ne v11, v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gi;

    move-object v5, v0

    move v6, v2

    :goto_3
    if-ne v11, v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gi;

    move-object v3, v0

    move v4, v2

    move v0, v1

    goto :goto_0

    :cond_4
    add-int/2addr v6, v11

    goto :goto_3

    :cond_5
    add-int v0, v4, v11

    move v4, v0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(I)B
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/hc;->g:I

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index > length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ddtaxi/a/a/hc;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/ddtaxi/a/a/hc;->j:I

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/hc;->h:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/k;->a(I)B

    move-result v0

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    iget v1, p0, Lcom/ddtaxi/a/a/hc;->j:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/k;->a(I)B

    move-result v0

    goto :goto_0
.end method

.method public a()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/hc;->g:I

    return v0
.end method

.method protected a(III)I
    .locals 4

    add-int v0, p2, p3

    iget v1, p0, Lcom/ddtaxi/a/a/hc;->j:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hc;->h:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ddtaxi/a/a/k;->a(III)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/hc;->j:I

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    iget v1, p0, Lcom/ddtaxi/a/a/hc;->j:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/ddtaxi/a/a/k;->a(III)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/ddtaxi/a/a/hc;->j:I

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/ddtaxi/a/a/hc;->h:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v1, p1, p2, v0}, Lcom/ddtaxi/a/a/k;->a(III)I

    move-result v1

    iget-object v2, p0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    const/4 v3, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/ddtaxi/a/a/k;->a(III)I

    move-result v0

    goto :goto_0
.end method

.method public a(II)Lcom/ddtaxi/a/a/k;
    .locals 4

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Beginning index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/hc;->g:I

    if-le p2, v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "End index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ddtaxi/a/a/hc;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sub-int v0, p2, p1

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Beginning index larger than ending index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez v0, :cond_4

    sget-object p0, Lcom/ddtaxi/a/a/k;->d:Lcom/ddtaxi/a/a/k;

    :cond_3
    :goto_0
    return-object p0

    :cond_4
    iget v1, p0, Lcom/ddtaxi/a/a/hc;->g:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/ddtaxi/a/a/hc;->j:I

    if-gt p2, v0, :cond_5

    iget-object v0, p0, Lcom/ddtaxi/a/a/hc;->h:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/k;->a(II)Lcom/ddtaxi/a/a/k;

    move-result-object p0

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/ddtaxi/a/a/hc;->j:I

    if-lt p1, v0, :cond_6

    iget-object v0, p0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    iget v1, p0, Lcom/ddtaxi/a/a/hc;->j:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/ddtaxi/a/a/hc;->j:I

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/k;->a(II)Lcom/ddtaxi/a/a/k;

    move-result-object p0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/ddtaxi/a/a/hc;->h:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/k;->b(I)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    const/4 v2, 0x0

    iget v3, p0, Lcom/ddtaxi/a/a/hc;->j:I

    sub-int v3, p2, v3

    invoke-virtual {v1, v2, v3}, Lcom/ddtaxi/a/a/k;->a(II)Lcom/ddtaxi/a/a/k;

    move-result-object v1

    new-instance p0, Lcom/ddtaxi/a/a/hc;

    invoke-direct {p0, v0, v1}, Lcom/ddtaxi/a/a/hc;-><init>(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/k;)V

    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hc;->h:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/k;->a(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/k;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method protected a([BIII)V
    .locals 4

    add-int v0, p2, p4

    iget v1, p0, Lcom/ddtaxi/a/a/hc;->j:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hc;->h:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ddtaxi/a/a/k;->a([BIII)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/hc;->j:I

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    iget v1, p0, Lcom/ddtaxi/a/a/hc;->j:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/ddtaxi/a/a/k;->a([BIII)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/ddtaxi/a/a/hc;->j:I

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/ddtaxi/a/a/hc;->h:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/ddtaxi/a/a/k;->a([BIII)V

    iget-object v1, p0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    const/4 v2, 0x0

    add-int v3, p3, v0

    sub-int v0, p4, v0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/ddtaxi/a/a/k;->a([BIII)V

    goto :goto_0
.end method

.method protected b(III)I
    .locals 4

    add-int v0, p2, p3

    iget v1, p0, Lcom/ddtaxi/a/a/hc;->j:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hc;->h:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ddtaxi/a/a/k;->b(III)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/hc;->j:I

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    iget v1, p0, Lcom/ddtaxi/a/a/hc;->j:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/ddtaxi/a/a/k;->b(III)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/ddtaxi/a/a/hc;->j:I

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/ddtaxi/a/a/hc;->h:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v1, p1, p2, v0}, Lcom/ddtaxi/a/a/k;->b(III)I

    move-result v1

    iget-object v2, p0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    const/4 v3, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/ddtaxi/a/a/k;->b(III)I

    move-result v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/hc;->e()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method b(Ljava/io/OutputStream;II)V
    .locals 3

    add-int v0, p2, p3

    iget v1, p0, Lcom/ddtaxi/a/a/hc;->j:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hc;->h:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ddtaxi/a/a/k;->b(Ljava/io/OutputStream;II)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/hc;->j:I

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    iget v1, p0, Lcom/ddtaxi/a/a/hc;->j:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/ddtaxi/a/a/k;->b(Ljava/io/OutputStream;II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/ddtaxi/a/a/hc;->j:I

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/ddtaxi/a/a/hc;->h:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v1, p1, p2, v0}, Lcom/ddtaxi/a/a/k;->b(Ljava/io/OutputStream;II)V

    iget-object v1, p0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    const/4 v2, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v1, p1, v2, v0}, Lcom/ddtaxi/a/a/k;->b(Ljava/io/OutputStream;II)V

    goto :goto_0
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hc;->h:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/k;->b(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/k;->b(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public c()Lcom/ddtaxi/a/a/l;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/hf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ddtaxi/a/a/hf;-><init>(Lcom/ddtaxi/a/a/hc;Lcom/ddtaxi/a/a/hf;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/ddtaxi/a/a/k;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/ddtaxi/a/a/k;

    iget v2, p0, Lcom/ddtaxi/a/a/hc;->g:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/ddtaxi/a/a/hc;->g:I

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/ddtaxi/a/a/hc;->l:I

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->o()I

    move-result v0

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/ddtaxi/a/a/hc;->l:I

    if-eq v2, v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/hc;->d(Lcom/ddtaxi/a/a/k;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/hc;->e()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/ddtaxi/a/a/he;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ddtaxi/a/a/he;-><init>(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/he;)V

    :goto_0
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/he;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/he;->a()Lcom/ddtaxi/a/a/gi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/gi;->f()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/ddtaxi/a/a/hc;->l:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ddtaxi/a/a/hc;->g:I

    const/4 v1, 0x0

    iget v2, p0, Lcom/ddtaxi/a/a/hc;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/ddtaxi/a/a/hc;->b(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/ddtaxi/a/a/hc;->l:I

    :cond_1
    return v0
.end method

.method public i()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ddtaxi/a/a/hc;->h:Lcom/ddtaxi/a/a/k;

    iget v2, p0, Lcom/ddtaxi/a/a/hc;->j:I

    invoke-virtual {v1, v0, v0, v2}, Lcom/ddtaxi/a/a/k;->a(III)I

    move-result v1

    iget-object v2, p0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    iget-object v3, p0, Lcom/ddtaxi/a/a/hc;->i:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/ddtaxi/a/a/k;->a(III)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/hc;->c()Lcom/ddtaxi/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/hg;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/hg;-><init>(Lcom/ddtaxi/a/a/hc;)V

    return-object v0
.end method

.method public k()Lcom/ddtaxi/a/a/o;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/hg;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/hg;-><init>(Lcom/ddtaxi/a/a/hc;)V

    invoke-static {v0}, Lcom/ddtaxi/a/a/o;->a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/o;

    move-result-object v0

    return-object v0
.end method

.method protected m()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/hc;->k:I

    return v0
.end method

.method protected n()Z
    .locals 3

    iget v0, p0, Lcom/ddtaxi/a/a/hc;->g:I

    sget-object v1, Lcom/ddtaxi/a/a/hc;->f:[I

    iget v2, p0, Lcom/ddtaxi/a/a/hc;->k:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected o()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/hc;->l:I

    return v0
.end method
