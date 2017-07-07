import React from 'react'

class TopicList extends React.Component {
  constructor(props) {
    super(props); // runs constructor of the parent class and passes props into it
    this.state = {
      selectedTopic: null,
      topicsList: null,
      page: 1
    };

    this.getTopics();
  }

  getTopics() {
    $.ajax({
      method: 'GET',
      url: 'api/topics',
      success: function(data) {
        this.setState({ topicsList: data });
      }.bind(this), //binding here instead of inside the contructor like in session.jsx
                    //because of anonymous callback function on success
      error: function(err) {
        console.error(this.props.url, err.toString());
      }.bind(this)
    });
  }

  render() {
    
    if (this.state.selectedTopic) {
      const selectedTopic = this.state.selectedTopic;
      
      return(
        <div className="div-topic">
          <div className="div-topic-container">
            <time className="topic-date">{ selectedTopic.date }</time>
            <h2 className="topic-title">{ selectedTopic.title }</h2>
            <span className="topic-author">By { selectedTopic.author }</span>
            <span className="topic-content"> { selectedTopic.content }</span>
          </div>
        </div>
      )
    }
    
    const topics = this.state.topicsList

    if (topics)
    {
      let topicListMarkup = topics.map((topic) => {
        return(
          <div className="div-topic-container" key={ topic.id }>
            <time className="topic-date">{ topic.date }</time>
            <h2 className="topic-title">{ topic.title }</h2>
            <span className="topic-author">By { topic.author.username }</span>
            <br/>
            <span className="topic-content"
              dangerouslySetInnerHTML={{ __html: topic.content.slice(0, 100) }}></span>
          </div>
        )
      })

      return(
        <div className="div-topic-list">
          <div>{ topicListMarkup }</div>
        </div>
      )
    }
    
    return (
      <h1>Loading...</h1>
    )
  }
}

export default TopicList;