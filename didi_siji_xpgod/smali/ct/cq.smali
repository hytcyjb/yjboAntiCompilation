.class public final Lct/cq;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "[0-9a-zA-Z+-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 13
    sput-object v0, Lct/cq;->a:Ljava/util/regex/Pattern;

    sput-object v0, Lct/cq;->b:Ljava/util/regex/Pattern;

    .line 14
    sget-object v0, Lct/cq;->a:Ljava/util/regex/Pattern;

    sput-object v0, Lct/cq;->c:Ljava/util/regex/Pattern;

    .line 15
    const-string v0, "[A-Z0-9]{12}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lct/cq;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    if-nez p0, :cond_1

    .line 19
    const-string p0, ""

    .line 24
    :cond_0
    :goto_0
    return-object p0

    .line 21
    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    const-string p0, ""

    goto :goto_0
.end method
