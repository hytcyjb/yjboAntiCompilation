.class final Lcom/ddtaxi/a/a/ik;
.super Ljava/lang/Object;


# static fields
.field private static final i:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;

.field private static final k:Ljava/util/regex/Pattern;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final m:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Ljava/util/regex/Matcher;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x2

    const-string v0, "(\\s|(#.*$))++"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ddtaxi/a/a/ik;->i:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|\'([^\'\n\\\\]|\\\\.)*+(\'|\\\\?$)"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ddtaxi/a/a/ik;->j:Ljava/util/regex/Pattern;

    const-string v0, "-?inf(inity)?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ddtaxi/a/a/ik;->k:Ljava/util/regex/Pattern;

    const-string v0, "-?inf(inity)?f?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ddtaxi/a/a/ik;->l:Ljava/util/regex/Pattern;

    const-string v0, "nanf?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ddtaxi/a/a/ik;->m:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/ddtaxi/a/a/ik;->d:I

    iput v0, p0, Lcom/ddtaxi/a/a/ik;->e:I

    iput v0, p0, Lcom/ddtaxi/a/a/ik;->f:I

    iput v0, p0, Lcom/ddtaxi/a/a/ik;->g:I

    iput v0, p0, Lcom/ddtaxi/a/a/ik;->h:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/ik;->a:Ljava/lang/CharSequence;

    sget-object v0, Lcom/ddtaxi/a/a/ik;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ik;->b:Ljava/util/regex/Matcher;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ik;->t()V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->b()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/ddtaxi/a/a/ik;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ik;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/NumberFormatException;)Lcom/ddtaxi/a/a/ie;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t parse integer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ik;->d(Ljava/lang/String;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ik;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_0
    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const-string v0, "Expected string."

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ik;->d(Ljava/lang/String;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v0, :cond_3

    :cond_2
    const-string v0, "String missing ending quote."

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ik;->d(Ljava/lang/String;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/hz;->a(Ljava/lang/CharSequence;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->b()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/ddtaxi/a/a/id; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/id;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ik;->d(Ljava/lang/String;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0
.end method

.method private b(Ljava/lang/NumberFormatException;)Lcom/ddtaxi/a/a/ie;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t parse number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ik;->d(Ljava/lang/String;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    return-object v0
.end method

.method private t()V
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->b:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/ddtaxi/a/a/ik;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->b:Ljava/util/regex/Matcher;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ik;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Lcom/ddtaxi/a/a/ik;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->b()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    iget v0, p0, Lcom/ddtaxi/a/a/ik;->e:I

    iput v0, p0, Lcom/ddtaxi/a/a/ik;->g:I

    iget v0, p0, Lcom/ddtaxi/a/a/ik;->f:I

    iput v0, p0, Lcom/ddtaxi/a/a/ik;->h:I

    :goto_0
    iget v0, p0, Lcom/ddtaxi/a/a/ik;->d:I

    iget-object v1, p0, Lcom/ddtaxi/a/a/ik;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/ik;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->a:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ddtaxi/a/a/ik;->d:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/ddtaxi/a/a/ik;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/ik;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/a/a/ik;->f:I

    :goto_2
    iget v0, p0, Lcom/ddtaxi/a/a/ik;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/ik;->d:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/ddtaxi/a/a/ik;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/ik;->f:I

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->b:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/ddtaxi/a/a/ik;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->b:Ljava/util/regex/Matcher;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ik;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Lcom/ddtaxi/a/a/ik;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_3
    invoke-direct {p0}, Lcom/ddtaxi/a/a/ik;->t()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->a:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ddtaxi/a/a/ik;->d:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->b:Ljava/util/regex/Matcher;

    iget v1, p0, Lcom/ddtaxi/a/a/ik;->d:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/ddtaxi/a/a/ik;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    goto :goto_3
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ik;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ik;->d(Ljava/lang/String;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-gt v2, v1, :cond_2

    const/16 v2, 0x39

    if-le v1, v2, :cond_3

    :cond_2
    const/16 v2, 0x2d

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Lcom/ddtaxi/a/a/ie;
    .locals 3

    new-instance v0, Lcom/ddtaxi/a/a/ie;

    iget v1, p0, Lcom/ddtaxi/a/a/ik;->e:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/ddtaxi/a/a/ik;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/ddtaxi/a/a/ie;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->b()V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-gt v2, v1, :cond_1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_4

    :cond_1
    const/16 v2, 0x41

    if-gt v2, v1, :cond_2

    const/16 v2, 0x5a

    if-le v1, v2, :cond_4

    :cond_2
    const/16 v2, 0x30

    if-gt v2, v1, :cond_3

    const/16 v2, 0x39

    if-le v1, v2, :cond_4

    :cond_3
    const/16 v2, 0x5f

    if-eq v1, v2, :cond_4

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected identifier. Found \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ik;->d(Ljava/lang/String;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Lcom/ddtaxi/a/a/ie;
    .locals 3

    new-instance v0, Lcom/ddtaxi/a/a/ie;

    iget v1, p0, Lcom/ddtaxi/a/a/ik;->g:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/ddtaxi/a/a/ik;->h:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/ddtaxi/a/a/ie;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public e()Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->d()Ljava/lang/String;
    :try_end_0
    .catch Lcom/ddtaxi/a/a/ie; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/hz;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->b()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/ik;->a(Ljava/lang/NumberFormatException;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0
.end method

.method public g()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/hz;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->b()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/ik;->a(Ljava/lang/NumberFormatException;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0
.end method

.method public h()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/hz;->f(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->b()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/ik;->a(Ljava/lang/NumberFormatException;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0
.end method

.method public i()Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->h()J
    :try_end_0
    .catch Lcom/ddtaxi/a/a/ie; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/hz;->g(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->b()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/ik;->a(Ljava/lang/NumberFormatException;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0
.end method

.method public k()Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->j()J
    :try_end_0
    .catch Lcom/ddtaxi/a/a/ie; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()D
    .locals 2

    sget-object v0, Lcom/ddtaxi/a/a/ik;->k:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->b()V

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x10

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    const-string v1, "nan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->b()V

    const-wide/high16 v0, 0x7ff8

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->b()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/ik;->b(Ljava/lang/NumberFormatException;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0
.end method

.method public m()Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->l()D
    :try_end_0
    .catch Lcom/ddtaxi/a/a/ie; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()F
    .locals 2

    sget-object v0, Lcom/ddtaxi/a/a/ik;->l:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->b()V

    if-eqz v0, :cond_0

    const/high16 v0, -0x80

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x7f80

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ddtaxi/a/a/ik;->m:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->b()V

    const/high16 v0, 0x7fc0

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->b()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/ik;->b(Ljava/lang/NumberFormatException;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0
.end method

.method public o()Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->n()F
    :try_end_0
    .catch Lcom/ddtaxi/a/a/ie; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->b()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->b()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v0, "Expected \"true\" or \"false\"."

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ik;->d(Ljava/lang/String;)Lcom/ddtaxi/a/a/ie;

    move-result-object v0

    throw v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->s()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ik;->q()Ljava/lang/String;
    :try_end_0
    .catch Lcom/ddtaxi/a/a/ie; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Lcom/ddtaxi/a/a/k;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/ik;->a(Ljava/util/List;)V

    :goto_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ddtaxi/a/a/ik;->c:Ljava/lang/String;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/ik;->a(Ljava/util/List;)V

    goto :goto_0
.end method
