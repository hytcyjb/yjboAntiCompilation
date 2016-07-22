.class final Lcom/facebook/soloader/c$a$a;
.super Lcom/facebook/soloader/h$d;
.source "ExoSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/soloader/c$a;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/facebook/soloader/c$a;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/facebook/soloader/c$a$a;->a:Lcom/facebook/soloader/c$a;

    invoke-direct {p0}, Lcom/facebook/soloader/h$d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/soloader/c$a;Lcom/facebook/soloader/c$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/facebook/soloader/c$a$a;-><init>(Lcom/facebook/soloader/c$a;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lcom/facebook/soloader/c$a$a;->b:I

    iget-object v1, p0, Lcom/facebook/soloader/c$a$a;->a:Lcom/facebook/soloader/c$a;

    invoke-static {v1}, Lcom/facebook/soloader/c$a;->a(Lcom/facebook/soloader/c$a;)[Lcom/facebook/soloader/c$b;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/facebook/soloader/h$c;
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/soloader/c$a$a;->a:Lcom/facebook/soloader/c$a;

    invoke-static {v0}, Lcom/facebook/soloader/c$a;->a(Lcom/facebook/soloader/c$a;)[Lcom/facebook/soloader/c$b;

    move-result-object v0

    iget v1, p0, Lcom/facebook/soloader/c$a$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/soloader/c$a$a;->b:I

    aget-object v0, v0, v1

    .line 140
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, v0, Lcom/facebook/soloader/c$b;->a:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 142
    :try_start_0
    new-instance v2, Lcom/facebook/soloader/h$c;

    invoke-direct {v2, v0, v1}, Lcom/facebook/soloader/h$c;-><init>(Lcom/facebook/soloader/h$a;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    const/4 v0, 0x0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_0
    return-object v2

    .line 146
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v0
.end method
