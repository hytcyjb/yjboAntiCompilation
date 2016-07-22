.class Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;
.super Landroid/os/AsyncTask;
.source "BtsCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/upload/BtsCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CropHeadWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/didi/beatles/upload/BtsCropActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/upload/BtsCropActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;->this$0:Lcom/didi/beatles/upload/BtsCropActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    .line 158
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;->this$0:Lcom/didi/beatles/upload/BtsCropActivity;

    #getter for: Lcom/didi/beatles/upload/BtsCropActivity;->mOutputPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/beatles/upload/BtsCropActivity;->access$100(Lcom/didi/beatles/upload/BtsCropActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 168
    .local v2, saveUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;->this$0:Lcom/didi/beatles/upload/BtsCropActivity;

    #getter for: Lcom/didi/beatles/upload/BtsCropActivity;->mCropImageView:Lcom/didi/beatles/upload/BtsCropImageView;
    invoke-static {v3}, Lcom/didi/beatles/upload/BtsCropActivity;->access$400(Lcom/didi/beatles/upload/BtsCropActivity;)Lcom/didi/beatles/upload/BtsCropImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;->this$0:Lcom/didi/beatles/upload/BtsCropActivity;

    #getter for: Lcom/didi/beatles/upload/BtsCropActivity;->mOutputX:I
    invoke-static {v4}, Lcom/didi/beatles/upload/BtsCropActivity;->access$200(Lcom/didi/beatles/upload/BtsCropActivity;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;->this$0:Lcom/didi/beatles/upload/BtsCropActivity;

    #getter for: Lcom/didi/beatles/upload/BtsCropActivity;->mOutputY:I
    invoke-static {v5}, Lcom/didi/beatles/upload/BtsCropActivity;->access$300(Lcom/didi/beatles/upload/BtsCropActivity;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/didi/beatles/upload/BtsCropImageView;->crop(FF)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;->mBitmap:Landroid/graphics/Bitmap;

    .line 171
    :try_start_1
    iget-object v3, p0, Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;->this$0:Lcom/didi/beatles/upload/BtsCropActivity;

    #getter for: Lcom/didi/beatles/upload/BtsCropActivity;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;
    invoke-static {v4}, Lcom/didi/beatles/upload/BtsCropActivity;->access$500(Lcom/didi/beatles/upload/BtsCropActivity;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    const/16 v5, 0x4b

    iget-object v6, p0, Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;->this$0:Lcom/didi/beatles/upload/BtsCropActivity;

    invoke-virtual {v6}, Lcom/didi/beatles/upload/BtsCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 178
    :goto_1
    const/4 v3, 0x0

    return-object v3

    .line 162
    .end local v2           #saveUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #saveUri:Landroid/net/Uri;
    :catch_1
    move-exception v0

    .line 173
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 174
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 147
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "CROP_PIC_PASS_KEY"

    iget-object v2, p0, Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;->this$0:Lcom/didi/beatles/upload/BtsCropActivity;

    #getter for: Lcom/didi/beatles/upload/BtsCropActivity;->mOutputPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/beatles/upload/BtsCropActivity;->access$100(Lcom/didi/beatles/upload/BtsCropActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;->this$0:Lcom/didi/beatles/upload/BtsCropActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/didi/beatles/upload/BtsCropActivity;->setResult(ILandroid/content/Intent;)V

    .line 186
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 187
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;->this$0:Lcom/didi/beatles/upload/BtsCropActivity;

    invoke-virtual {v1}, Lcom/didi/beatles/upload/BtsCropActivity;->finish()V

    .line 188
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method
