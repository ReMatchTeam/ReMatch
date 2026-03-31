# Base 

## AUTH

### LogIn
 
 Method: POST

 Path: /p/auth/v1/signin
 
 QSP: app_id=mxm-account-v1.0

 Payload: {
    "guid": "", // for request allowed using just ""
    "applications": [
        "mxm-account-v1.0",
        "mxm-com-v1.0",
        "web-desktop-app-v1.0",
        "musixmatch-podcasts-v2.0",
        "mxm-pro-web-v1.0",
        "musixmatch-publishers-v2.0",
        "mxm-experiments-unstable-v1.0",
        "mxm-experiments-v1.0"
    ],
    "email": "",
    "password": "",
    "type": "mxm",
    "ignoreCheckDuplicatedAccount": false
}

 Response: {
  "message": "SignIn ok",
  "data": {
    "tokens": {
      "mxm-account-v1.0": "",
      "mxm-com-v1.0": "",
      "web-desktop-app-v1.0": "",
      "musixmatch-podcasts-v2.0": "",
      "mxm-pro-web-v1.0": "",
      "musixmatch-publishers-v2.0": "",
      "mxm-experiments-unstable-v1.0": "",
      "mxm-experiments-v1.0": ""
    }
  }
}

 About: Auth and get API tokens


## Work with lyrics

### Send lyrics

#### 

## Work with account

### About 

 Method: GET

 Path: /ws/1.1/crowd.score.get

 QPS: app_id = mxm-com-v1.0;
 usertoken = ;

 Response: {
    "message": {
        "header": {
            "status_code": ,
            "execute_time": 
        },
        "body": {
            "user": {
                "uaid": "",
                "is_mine": , // 0 or 1
                "user_name": "",
                "user_name_alias": "",
                "created": "",
                "user_profile_photo": "",
                "has_private_profile": 0,
                "has_informative_profile_page": 0,
                "has_distributor_profile_page": 0,
                "score": ,
                "position": ,
                "level": "",
                "key": "", // key?
                "rank_level": ,
                "rank_name": "",
                "rank_color": "",
                "rank_colors": {
                    "rank_color_10": "",
                    "rank_color_50": "",
                    "rank_color_100": "",
                    "rank_color_200": ""
                },
                "rank_image_url": "",
                "weekly_score": ,
                "points_to_next_level": ,
                "ratio_to_next_level": ,
                "next_rank_name": "",
                "ratio_to_next_rank": ,
                "next_rank_color": "", // hex
                "next_rank_colors": {
                    "rank_color_10": "", // hex
                    "rank_color_50": "", // hex
                    "rank_color_100": "", // hex
                    "rank_color_200": "" // hex
                },
                "next_rank_image_url": "",
                "counters": {
                    "lyrics_missing":,
                    "track_structure":,
                    "track_influencer_bonus_moderator_vote":, // 0/1
                    "vote_bonuses":, // maybe 0 or 1. Need learn
                    "lyrics_changed":,
                    "lyrics_favourite_added":,
                    "track_performer_tagging":,
                    "lyrics_ai_mood_analysis_v3_value":, // AI, AI, AI
                    "save_academy_test_passed":,
                    "lyrics_subtitle_added":,
                    "track_complete_metadata":,
                    "evaluation_curator_test":,
                    "lyrics_richsync_added":,
                    "lyrics_ranking_change":
                },
                "moderator":, // bool
                "artist_manager":, // 0/1 (what no bool?)
                "academy_completed":, // bool
                "academy_completed_date": ""
            }
        }
    }
}


### Get Spotify Token

