.class final Lcom/facebook/soloader/c$b;
.super Lcom/facebook/soloader/h$a;
.source "ExoSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iput-object p3, p0, Lcom/facebook/soloader/c$b;->a:Ljava/io/File;

    .line 159
    return-void
.end method
