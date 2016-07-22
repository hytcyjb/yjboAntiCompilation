.class public Lcom/facebook/soloader/d;
.super Lcom/facebook/soloader/h;
.source "ExtractFromZipSoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/d$1;,
        Lcom/facebook/soloader/d$a;,
        Lcom/facebook/soloader/d$b;
    }
.end annotation


# instance fields
.field protected final c:Ljava/io/File;

.field protected final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    iput-object p3, p0, Lcom/facebook/soloader/d;->c:Ljava/io/File;

    .line 43
    iput-object p4, p0, Lcom/facebook/soloader/d;->d:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method protected a()Lcom/facebook/soloader/h$e;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/facebook/soloader/d$b;

    invoke-direct {v0, p0}, Lcom/facebook/soloader/d$b;-><init>(Lcom/facebook/soloader/d;)V

    return-object v0
.end method
