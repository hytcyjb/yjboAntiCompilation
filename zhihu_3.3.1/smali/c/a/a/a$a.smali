.class public Lc/a/a/a$a;
.super Ljava/lang/Object;
.source "Ln.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x2

    iput v0, p0, Lc/a/a/a$a;->a:I

    .line 194
    const-string v0, ""

    iput-object v0, p0, Lc/a/a/a$a;->b:Ljava/lang/String;

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lc/a/a/a$a;->c:Ljava/lang/String;

    .line 198
    return-void
.end method
