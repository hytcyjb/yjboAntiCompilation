.class final Lcom/ddtaxi/a/a/ij;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Appendable;

.field private final b:Ljava/lang/StringBuilder;

.field private c:Z


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/ij;->b:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/ij;->c:Z

    iput-object p1, p0, Lcom/ddtaxi/a/a/ij;->a:Ljava/lang/Appendable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;Lcom/ddtaxi/a/a/ij;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ij;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method

.method private b(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/ddtaxi/a/a/ij;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/ij;->c:Z

    iget-object v0, p0, Lcom/ddtaxi/a/a/ij;->a:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ij;->b:Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/ij;->a:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ij;->b:Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/ij;->b(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/ij;->b(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v1, 0x1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ddtaxi/a/a/ij;->c:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/ij;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Outdent() without matching Indent()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/ij;->b:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method
