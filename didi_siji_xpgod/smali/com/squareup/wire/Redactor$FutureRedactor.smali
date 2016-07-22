.class Lcom/squareup/wire/Redactor$FutureRedactor;
.super Lcom/squareup/wire/Redactor;
.source "Redactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/Redactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FutureRedactor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/Message;",
        ">",
        "Lcom/squareup/wire/Redactor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/squareup/wire/Redactor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/Redactor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, this:Lcom/squareup/wire/Redactor$FutureRedactor;,"Lcom/squareup/wire/Redactor$FutureRedactor<TT;>;"
    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/squareup/wire/Redactor;-><init>(Ljava/lang/reflect/Constructor;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 135
    return-void
.end method


# virtual methods
.method public redact(Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, this:Lcom/squareup/wire/Redactor$FutureRedactor;,"Lcom/squareup/wire/Redactor$FutureRedactor<TT;>;"
    .local p1, message:Lcom/squareup/wire/Message;,"TT;"
    iget-object v0, p0, Lcom/squareup/wire/Redactor$FutureRedactor;->delegate:Lcom/squareup/wire/Redactor;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Delegate was not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/Redactor$FutureRedactor;->delegate:Lcom/squareup/wire/Redactor;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/Redactor;->redact(Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;

    move-result-object v0

    return-object v0
.end method

.method public setDelegate(Lcom/squareup/wire/Redactor;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/Redactor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, this:Lcom/squareup/wire/Redactor$FutureRedactor;,"Lcom/squareup/wire/Redactor$FutureRedactor<TT;>;"
    .local p1, delegate:Lcom/squareup/wire/Redactor;,"Lcom/squareup/wire/Redactor<TT;>;"
    iput-object p1, p0, Lcom/squareup/wire/Redactor$FutureRedactor;->delegate:Lcom/squareup/wire/Redactor;

    .line 139
    return-void
.end method
