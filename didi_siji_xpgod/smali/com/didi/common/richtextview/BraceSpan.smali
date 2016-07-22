.class public Lcom/didi/common/richtextview/BraceSpan;
.super Lcom/didi/common/richtextview/BaseSpan;
.source "BraceSpan.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/didi/common/richtextview/BaseSpan;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public getSpans(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "s"
    .parameter "keywords"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/richtextview/Span;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/didi/common/richtextview/BaseSpan;->getSpans(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
