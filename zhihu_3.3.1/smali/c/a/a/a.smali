.class public final Lc/a/a/a;
.super Ljava/lang/Object;
.source "Ln.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/a$b;,
        Lc/a/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Lc/a/a/a$a;

.field private static b:Lc/a/a/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lc/a/a/a$a;

    invoke-direct {v0}, Lc/a/a/a$a;-><init>()V

    sput-object v0, Lc/a/a/a;->a:Lc/a/a/a$a;

    .line 48
    new-instance v0, Lc/a/a/a$b;

    invoke-direct {v0}, Lc/a/a/a$b;-><init>()V

    sput-object v0, Lc/a/a/a;->b:Lc/a/a/a$b;

    return-void
.end method

.method public static varargs a(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 58
    sget-object v0, Lc/a/a/a;->a:Lc/a/a/a$a;

    iget v0, v0, Lc/a/a/a$a;->a:I

    if-le v0, v2, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    .line 62
    :cond_0
    invoke-static {p0}, Lc/a/a/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    array-length v1, p1

    if-lez v1, :cond_1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_1
    sget-object v1, Lc/a/a/a;->b:Lc/a/a/a$b;

    invoke-virtual {v1, v2, v0}, Lc/a/a/a$b;->a(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x6

    .line 150
    sget-object v0, Lc/a/a/a;->a:Lc/a/a/a$a;

    iget v0, v0, Lc/a/a/a$a;->a:I

    if-gt v0, v2, :cond_0

    sget-object v0, Lc/a/a/a;->b:Lc/a/a/a$b;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lc/a/a/a$b;->a(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 92
    sget-object v0, Lc/a/a/a;->a:Lc/a/a/a$a;

    iget v0, v0, Lc/a/a/a$a;->a:I

    if-le v0, v3, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    .line 96
    :cond_0
    invoke-static {p1}, Lc/a/a/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    if-lez v2, :cond_1

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    sget-object v1, Lc/a/a/a;->b:Lc/a/a/a$b;

    invoke-virtual {v1, v3, v0}, Lc/a/a/a$b;->a(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a()Lc/a/a/a$a;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lc/a/a/a;->a:Lc/a/a/a$a;

    return-object v0
.end method

.method public static varargs b(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 82
    sget-object v0, Lc/a/a/a;->a:Lc/a/a/a$a;

    iget v0, v0, Lc/a/a/a$a;->a:I

    if-le v0, v2, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    .line 86
    :cond_0
    invoke-static {p0}, Lc/a/a/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    array-length v1, p1

    if-lez v1, :cond_1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_1
    sget-object v1, Lc/a/a/a;->b:Lc/a/a/a$b;

    invoke-virtual {v1, v2, v0}, Lc/a/a/a$b;->a(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs b(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x6

    .line 164
    sget-object v0, Lc/a/a/a;->a:Lc/a/a/a$a;

    iget v0, v0, Lc/a/a/a$a;->a:I

    if-le v0, v3, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    .line 168
    :cond_0
    invoke-static {p1}, Lc/a/a/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    if-lez v2, :cond_1

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    sget-object v1, Lc/a/a/a;->b:Lc/a/a/a$b;

    invoke-virtual {v1, v3, v0}, Lc/a/a/a$b;->a(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs c(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x5

    .line 130
    sget-object v0, Lc/a/a/a;->a:Lc/a/a/a$a;

    iget v0, v0, Lc/a/a/a$a;->a:I

    if-le v0, v2, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    .line 134
    :cond_0
    invoke-static {p0}, Lc/a/a/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    array-length v1, p1

    if-lez v1, :cond_1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_1
    sget-object v1, Lc/a/a/a;->b:Lc/a/a/a$b;

    invoke-virtual {v1, v2, v0}, Lc/a/a/a$b;->a(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x6

    .line 154
    sget-object v0, Lc/a/a/a;->a:Lc/a/a/a$a;

    iget v0, v0, Lc/a/a/a$a;->a:I

    if-le v0, v2, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 160
    :goto_0
    return v0

    .line 158
    :cond_0
    invoke-static {p0}, Lc/a/a/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 159
    array-length v1, p1

    if-lez v1, :cond_1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_1
    sget-object v1, Lc/a/a/a;->b:Lc/a/a/a$b;

    invoke-virtual {v1, v2, v0}, Lc/a/a/a$b;->a(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
