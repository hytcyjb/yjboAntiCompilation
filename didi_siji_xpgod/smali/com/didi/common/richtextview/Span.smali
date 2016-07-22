.class public Lcom/didi/common/richtextview/Span;
.super Ljava/lang/Object;
.source "Span.java"


# instance fields
.field public key:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public spanEnd:I

.field public spanStart:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/richtextview/Span;->source:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/richtextview/Span;->key:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/richtextview/Span;->link:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/richtextview/Span;->title:Ljava/lang/String;

    return-void
.end method
