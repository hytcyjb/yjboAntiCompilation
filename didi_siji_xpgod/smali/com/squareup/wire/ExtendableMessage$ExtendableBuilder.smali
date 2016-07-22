.class public abstract Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;
.super Lcom/squareup/wire/Message$Builder;
.source "ExtendableMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/ExtendableMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/ExtendableMessage",
        "<*>;>",
        "Lcom/squareup/wire/Message$Builder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field extensionMap:Lcom/squareup/wire/ExtensionMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ExtensionMap",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 94
    .local p0, this:Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;,"Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder<TT;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 95
    return-void
.end method

.method protected constructor <init>(Lcom/squareup/wire/ExtendableMessage;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ExtendableMessage",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, this:Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;,"Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder<TT;>;"
    .local p1, message:Lcom/squareup/wire/ExtendableMessage;,"Lcom/squareup/wire/ExtendableMessage<TT;>;"
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 99
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lcom/squareup/wire/ExtensionMap;

    iget-object v1, p1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-direct {v0, v1}, Lcom/squareup/wire/ExtensionMap;-><init>(Lcom/squareup/wire/ExtensionMap;)V

    iput-object v0, p0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public getExtension(Lcom/squareup/wire/Extension;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/wire/Extension",
            "<TT;TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, this:Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;,"Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder<TT;>;"
    .local p1, extension:Lcom/squareup/wire/Extension;,"Lcom/squareup/wire/Extension<TT;TE;>;"
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ExtensionMap;->get(Lcom/squareup/wire/Extension;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public setExtension(Lcom/squareup/wire/Extension;Ljava/lang/Object;)Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/wire/Extension",
            "<TT;TE;>;TE;)",
            "Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, this:Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;,"Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder<TT;>;"
    .local p1, extension:Lcom/squareup/wire/Extension;,"Lcom/squareup/wire/Extension<TT;TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/squareup/wire/ExtensionMap;

    invoke-direct {v0, p1, p2}, Lcom/squareup/wire/ExtensionMap;-><init>(Lcom/squareup/wire/Extension;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    .line 121
    :goto_0
    return-object p0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/wire/ExtensionMap;->put(Lcom/squareup/wire/Extension;Ljava/lang/Object;)V

    goto :goto_0
.end method
