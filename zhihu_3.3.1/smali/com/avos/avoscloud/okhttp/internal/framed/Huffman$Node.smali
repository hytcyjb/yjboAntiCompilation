.class final Lcom/avos/avoscloud/okhttp/internal/framed/Huffman$Node;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/framed/Huffman;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation


# instance fields
.field private final children:[Lcom/avos/avoscloud/okhttp/internal/framed/Huffman$Node;

.field private final symbol:I

.field private final terminalBits:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/16 v0, 0x100

    new-array v0, v0, [Lcom/avos/avoscloud/okhttp/internal/framed/Huffman$Node;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Huffman$Node;->children:[Lcom/avos/avoscloud/okhttp/internal/framed/Huffman$Node;

    .line 208
    iput v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Huffman$Node;->symbol:I

    .line 209
    iput v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Huffman$Node;->terminalBits:I

    .line 210
    return-void
.end method

.method constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Huffman$Node;->children:[Lcom/avos/avoscloud/okhttp/internal/framed/Huffman$Node;

    .line 220
    iput p1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Huffman$Node;->symbol:I

    .line 221
    and-int/lit8 v0, p2, 0x7

    .line 222
    if-nez v0, :cond_0

    const/16 v0, 0x8

    :cond_0
    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Huffman$Node;->terminalBits:I

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/okhttp/internal/framed/Huffman$Node;)[Lcom/avos/avoscloud/okhttp/internal/framed/Huffman$Node;
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Huffman$Node;->children:[Lcom/avos/avoscloud/okhttp/internal/framed/Huffman$Node;

    return-object v0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/okhttp/internal/framed/Huffman$Node;)I
    .locals 1
    .parameter

    .prologue
    .line 194
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Huffman$Node;->symbol:I

    return v0
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/okhttp/internal/framed/Huffman$Node;)I
    .locals 1
    .parameter

    .prologue
    .line 194
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Huffman$Node;->terminalBits:I

    return v0
.end method
