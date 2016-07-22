.class public Lcom/facebook/common/d/b;
.super Ljava/lang/Object;
.source "FLogDefaultLoggingDelegate.java"

# interfaces
.implements Lcom/facebook/common/d/c;


# static fields
.field public static final a:Lcom/facebook/common/d/b;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/facebook/common/d/b;

    invoke-direct {v0}, Lcom/facebook/common/d/b;-><init>()V

    sput-object v0, Lcom/facebook/common/d/b;->a:Lcom/facebook/common/d/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/facebook/common/d/b;->b:Ljava/lang/String;

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/facebook/common/d/b;->c:I

    .line 32
    return-void
.end method

.method public static a()Lcom/facebook/common/d/b;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/facebook/common/d/b;->a:Lcom/facebook/common/d/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/common/d/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/common/d/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 145
    :cond_0
    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/common/d/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 154
    if-nez p0, :cond_0

    .line 155
    const-string v0, ""

    .line 160
    :goto_0
    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 158
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 159
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 160
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-direct {p0, p2}, Lcom/facebook/common/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-direct {p0, p2}, Lcom/facebook/common/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p4}, Lcom/facebook/common/d/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/common/d/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/common/d/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method public a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/facebook/common/d/b;->c:I

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/common/d/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/common/d/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/common/d/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/common/d/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/common/d/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/common/d/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/common/d/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/common/d/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method
