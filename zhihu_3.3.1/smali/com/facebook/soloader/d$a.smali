.class final Lcom/facebook/soloader/d$a;
.super Lcom/facebook/soloader/h$a;
.source "ExtractFromZipSoSource.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/zip/ZipEntry;

.field final b:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/zip/ZipEntry;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-static {p2}, Lcom/facebook/soloader/d$a;->a(Ljava/util/zip/ZipEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/soloader/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iput-object p2, p0, Lcom/facebook/soloader/d$a;->a:Ljava/util/zip/ZipEntry;

    .line 167
    iput p3, p0, Lcom/facebook/soloader/d$a;->b:I

    .line 168
    return-void
.end method

.method private static a(Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 171
    const-string v0, "pseudo-zip-hash-1-%s-%s-%s-%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/soloader/d$a;->c:Ljava/lang/String;

    check-cast p1, Lcom/facebook/soloader/d$a;

    iget-object v1, p1, Lcom/facebook/soloader/d$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
