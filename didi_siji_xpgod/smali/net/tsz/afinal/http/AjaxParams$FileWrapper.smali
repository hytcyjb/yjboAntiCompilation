.class Lnet/tsz/afinal/http/AjaxParams$FileWrapper;
.super Ljava/lang/Object;
.source "AjaxParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tsz/afinal/http/AjaxParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileWrapper"
.end annotation


# instance fields
.field public contentType:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "inputStream"
    .parameter "fileName"
    .parameter "contentType"

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lnet/tsz/afinal/http/AjaxParams$FileWrapper;->inputStream:Ljava/io/InputStream;

    .line 231
    iput-object p2, p0, Lnet/tsz/afinal/http/AjaxParams$FileWrapper;->fileName:Ljava/lang/String;

    .line 232
    iput-object p3, p0, Lnet/tsz/afinal/http/AjaxParams$FileWrapper;->contentType:Ljava/lang/String;

    .line 233
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lnet/tsz/afinal/http/AjaxParams$FileWrapper;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lnet/tsz/afinal/http/AjaxParams$FileWrapper;->fileName:Ljava/lang/String;

    .line 239
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "nofilename"

    goto :goto_0
.end method
