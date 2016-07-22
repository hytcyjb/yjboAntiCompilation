.class public final Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;
.super Ljava/lang/Object;
.source "JsonWebSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/json/webtoken/JsonWebSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parser"
.end annotation


# instance fields
.field private headerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;",
            ">;"
        }
    .end annotation
.end field

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private payloadClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/JsonFactory;)V
    .locals 1
    .parameter

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    const-class v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    iput-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->headerClass:Ljava/lang/Class;

    .line 554
    const-class v0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    iput-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->payloadClass:Ljava/lang/Class;

    .line 560
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 561
    return-void
.end method


# virtual methods
.method public getHeaderClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->headerClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public getPayloadClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->payloadClass:Ljava/lang/Class;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature;
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x2e

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 598
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 599
    if-eq v3, v6, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 600
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v4

    .line 601
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 602
    if-eq v5, v6, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 603
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v6, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 605
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v3

    .line 606
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v6

    .line 607
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v5

    .line 609
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v4, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->headerClass:Ljava/lang/Class;

    invoke-virtual {v0, v7, v4}, Lcom/google/api/client/json/JsonFactory;->fromInputStream(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    .line 611
    invoke-virtual {v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    :goto_3
    invoke-static {v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 612
    iget-object v1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v3, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->payloadClass:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/json/JsonFactory;->fromInputStream(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 614
    new-instance v2, Lcom/google/api/client/json/webtoken/JsonWebSignature;

    invoke-direct {v2, v0, v1, v6, v5}, Lcom/google/api/client/json/webtoken/JsonWebSignature;-><init>(Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;[B[B)V

    return-object v2

    :cond_0
    move v0, v2

    .line 599
    goto :goto_0

    :cond_1
    move v0, v2

    .line 602
    goto :goto_1

    :cond_2
    move v0, v2

    .line 603
    goto :goto_2

    :cond_3
    move v1, v2

    .line 611
    goto :goto_3
.end method

.method public setHeaderClass(Ljava/lang/Class;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;",
            ">;)",
            "Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;"
        }
    .end annotation

    .prologue
    .line 570
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->headerClass:Ljava/lang/Class;

    .line 571
    return-object p0
.end method

.method public setPayloadClass(Ljava/lang/Class;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;",
            ">;)",
            "Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;"
        }
    .end annotation

    .prologue
    .line 581
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->payloadClass:Ljava/lang/Class;

    .line 582
    return-object p0
.end method
