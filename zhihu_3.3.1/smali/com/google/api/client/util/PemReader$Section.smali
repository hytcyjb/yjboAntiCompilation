.class public final Lcom/google/api/client/util/PemReader$Section;
.super Ljava/lang/Object;
.source "PemReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/PemReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Section"
.end annotation


# instance fields
.field private final base64decodedBytes:[B

.field private final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/util/PemReader$Section;->title:Ljava/lang/String;

    .line 167
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/api/client/util/PemReader$Section;->base64decodedBytes:[B

    .line 168
    return-void
.end method


# virtual methods
.method public getBase64DecodedBytes()[B
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/api/client/util/PemReader$Section;->base64decodedBytes:[B

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/api/client/util/PemReader$Section;->title:Ljava/lang/String;

    return-object v0
.end method
